const db = require('../db')
const ExpressError = require('../expressError')

class ReferencePoint {
    static async create({story, 
        observation, 
        response,
        emotions, 
        universal,
        action,
        qualities,
        connection_point,
        username}) {
            const results = await db.query(
                `INSERT INTO reference_points
                (story, observation, emotions, universal, action,
                    qualities,connection_point,user_id)
                VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
                RETURNING story, 
                    observation, 
                    response,
                    emotions, 
                    universal,
                    action,
                    qualities,
                    connection_point,
                    username`,
                [
                    story, 
                    observation, 
                    response,
                    emotions, 
                    universal,
                    action,
                    qualities,
                    connection_point,
                    username
                ]
            )
            const referencePoint = results.rows[0]
            return referencePoint
        }


    static async get(id) {
        const results = await db.query(
            `SELECT story, 
                observation, 
                response,
                emotions, 
                universal,
                action,
                qualities,
                connection_point,
                user_id
            FROM reference_points
            WHERE id = $1`, [id])

        const referencePoint = results.rows[0]
        return referencePoint
    }

    static async update(id, 
        {headerSituation, 
        headerSpecification, 
        category, 
        subcategory}) {
        const results = await db.query(
            `UPDATE reference_points
            SET headerSituation = $2, 
                headerSpecification = $3, 
                category = $4, 
                subcategory = $5
            FROM reference_points AS r
                JOIN header_situations AS sit 
                    ON sit.id = r.header_situation_id
                JOIN header_specifications AS spec 
                    ON spec.id = r.header_specification_id
                JOIN category AS c 
                    ON c.id = r.category_id
                JOIN subcategory AS sub 
                    ON sub.id = r.subcategory_id
            WHERE id = $1
            RETURNING story, 
                observation, 
                response,
                emotions, 
                universal,
                action,
                qualities,
                connection_point,
                user_id
                headerSituation, 
                headerSpecification, 
                category, 
                subcategory
            ` , 
            [
                id,
                headerSituation, 
                headerSpecification, 
                category, 
                subcategory
            ])
    
    const referencePoint = results.rows[0]
    return referencePoint
    } 


    static async remove(id) {
        const results = await db.query(
            `DELETE
            FROM reference_points
            WHERE id = $1
            RETURNING id`, [id])

        const referencePoint = results.rows[0]
        if (!referencePoint) throw new ExpressError(`No Reference Point With Id: ${id} Found`)
        return referencePoint
    }
}

module.exports = ReferencePoint