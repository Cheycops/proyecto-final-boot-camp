import {Router} from 'express'
import pool from '../database.js'


const router = Router();


router.get('/ganadoresgoty', async(req, res) =>{
    try {
        const [result] = await pool.query('SELECT * FROM ganadoresgoty');
        res.render('ganadores/ganadoresgoty', {ganadoresgoty: result})
    } catch (error) {
        res.status(500).json({message: error.message})
    }
});
router.get('/ganadoresgoty/list', async(req, res) =>{
    try {
        const [result] = await pool.query('SELECT * FROM ganadoresgoty');
        res.render('crud/list', {personas: result})
    } catch (error) {
        res.status(500).json({message: error.message})
    }
})
router.get('/delete/:id', async(req, res) =>{
    try {
        const {id} = req.params
        await pool.query('DELETE FROM ganadoresgoty WHERE id = ?', [id]);
        res.redirect('/ganadoresgoty/list')
    } catch (error) {
        res.status(500).json({message: error.message})        
    }
})

export default router;