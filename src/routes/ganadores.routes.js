import {Router} from 'express'
import pool from '../database.js'
import multer from 'multer'
import path from 'path'


const router = Router();

const storage = multer.diskStorage({
    destination:'src/public/uploads/',
    filename: (req, file, cb) =>{
        const uniqueSuffix= Date.now() +'-'+ Math.round(Math.random() * 1E9)
        const ext = path.extname(file.originalname)
        cb(null,file.filename +'-'+ uniqueSuffix + ext)
    }
})

const uploads = multer({storage})


// creacion en base de datos//
router.get('/ganadoresgoty-add', (req, res) =>{
    res.render('crud/add')
});
router.post('/add', uploads.single('file') ,async (req,res) =>{
try {
    const{titulo, genero, desarrollador, distribuidor, plataformas} = req.body
    let newwinner
    if(req.file){
        const file = req.file
        const img_original = file.originalname
        const img = file.filename
        newwinner ={
        img, titulo, genero, desarrollador,distribuidor,plataformas
    }
    }else{
        newwinner ={
            titulo, genero, desarrollador,distribuidor,plataformas
        }
    }
    await pool.query('INSERT INTO ganadoresgoty SET ?', [newwinner]);
    res.redirect('/ganadoresgoty-list')

} catch (error) {
    
}
})


//visualicaciones//
router.get('/ganadoresgoty', async(req, res) =>{
    try {
        const [result] = await pool.query('SELECT * FROM ganadoresgoty');
        res.render('ganadores/ganadoresgoty', {ganadoresgoty: result})
    } catch (error) {
        res.status(500).json({message: error.message})
    }
})
router.get('/ganadoresgoty-list', async(req, res) =>{
    try {
        const [result] = await pool.query('SELECT * FROM ganadoresgoty');
        res.render('crud/list', {ganadores: result})
    } catch (error) {
        res.status(500).json({message: error.message})
    }
})

//edit vista//
router.get('/edit/:id', async (req, res) =>{
    try {
        const {id} = req.params
        const [ganador] = await pool.query('SELECT * FROM ganadoresgoty WHERE id = ?', [id] );
        const ganadoredit = ganador[0]
        res.render('crud/edit', {ganador: ganadoredit})
    } catch (error) {
        res.status(500).json({message: error.message})
    }
})

//edit modificaciones//
router.post('/edit/:id',uploads.single('file') , async (req, res) =>{
    try {
        const {id} = req.params
        const {titulo, genero, desarrollador,distribuidor,plataformas} = req.body
        let editwinner
    if(req.file){
        const file = req.file
        const img_original = file.originalname
        const img = file.filename
        editwinner ={
        img, titulo, genero, desarrollador,distribuidor,plataformas
    }
    }else{
        editwinner ={
            titulo, genero, desarrollador,distribuidor,plataformas
        }
    }
        await pool.query('UPDATE ganadoresgoty SET ? WHERE id = ?', [editwinner, id]);
        res.redirect('/ganadoresgoty-list');
    } catch (error) {
        res.status(500).json({message: error.message})
    }
})





// delete //
router.get('/delete/:id', async(req, res) =>{
    try {
        const {id} = req.params
        await pool.query('DELETE FROM ganadoresgoty WHERE id = ?', [id]);
        res.redirect('/ganadoresgoty-list')
    } catch (error) {
        res.status(500).json({message: error.message})        
    }
})

export default router;