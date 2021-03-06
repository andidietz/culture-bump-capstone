const db = require('../db')
const ExpressError = require('../expressError')
const bcrypt = require('bcrypt')
const {BCRYPT_WORK_FACTOR} = require('../config')

class User {
    static async authenticate(username, password) {
        const results = await db.query(
            `SELECT username,
                password,
                email,
                name
            FROM users
            WHERE username = $1`, [username]
        )

        const user = results.rows[0]

        if (user) {
            const isValidUser = await bcrypt.compare(password, username.password)
            if (isValidUser === true) {
                delete user.password
                return user
            }
        }

        throw new ExpressError('Invalid username or password')
    }

    static async register({username, email, name, password}) {
        const duplicateCheck = await db.query(
            `SELECT username
            FROM users
            WHERE username = $1`, [username]
        )

        if (duplicateCheck.rows[0]) {
            throw new ExpressError('Username already in use')
        }

        const hashedPassword = await bcrypt.hash(password, BCRYPT_WORK_FACTOR)

        const results = await db.query(
            `INSERT INTO users
            (username, email, password, name)
            VALUES ($1, $2, $3, $4)
            RETURNING username, email, name`, [
                username, email, hashedPassword, name
            ]
        )

        const user = results.rows[0]
        return user
    }

    static async get(username) {
        const results = await db.query(
            `SELECT username, email, name
            FROM users
            WHERE username = $1`, [username]
        )

        const user = results.rows[0]
        if (!user) throw new ExpressError(`User ${username} Not Found`)

        return user
    }

    static async getAllReferencePoints(username) {
        const results = await db.query(
            `SELECT r.type,
                r.sparker,
                r.thought, 
                r.observation, 
                r.response,
                r.emotions, 
                r.universal,
                r.action,
                r.qualities,
                r.connection_point,
                r.user_id, 
                sit.header_situation, 
                spec.header_specification, 
                c.category, 
                sub.subcategory
            FROM reference_points AS r
                JOIN header_situations AS sit 
                    ON sit.id = r.header_situation_id
                JOIN header_specifications AS spec 
                    ON spec.id = r.header_specification_id
                JOIN categories AS c 
                    ON c.id = r.category_id
                JOIN subcategories AS sub 
                    ON sub.id = r.subcategory_id
            WHERE r.user_id = $1`, [username]
        )

        const userReferencePoints = results.rows
        if (!userReferencePoints) throw new ExpressError(`Not Found`)

        return userReferencePoints
    }

    static async remove(username) {
        const results = await db.query(
            `DELETE
            FROM users
            WHERE username = $1
            RETURNING username`, [username]
        )
        const user = results.rows[0]

        if (!user) throw new ExpressError(`User ${username} Not Found`)
    }

}

module.exports = User