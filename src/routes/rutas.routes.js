import { Router } from "express";
import moment from "moment";
import { con } from "../controllers/db.js"
import { conn } from "../controllers/dbViera.js";
import { prueba, regMas, regUser, regMem } from "../controllers/Veterinaria.controller.js";
import { rutaInicial, subirImagen, num } from "../controllers/vierapp.controller.js";
/* import { datos } from "../controllers/SFDatos.controller.js";
 *//* import { api } from "../controllers/mitrolAPI.controller.js";
 */import multer from "multer";
const subida = multer({ dest: 'public/' })

const ruta = Router();

ruta.get('/', rutaInicial);

/* ruta.get('/SF', datos); */

// Ruta para determinar de donde es un numero
ruta.get('/buscar', num);

ruta.get('/subirImagen', subirImagen);

ruta.get('/mostrarClientes',async (req, res)=>{
  
   const [resultado] = await conn.query('SELECT c.nombre AS nombre_cliente, m.tipo_membresia, m.fecha_vencimiento, c.telefono, c.direccion, mas.nombre AS nombre_mascota, mas.imagen AS imagen FROM clientes c JOIN mascotas mas ON mas.id_cliente = c.id_cliente JOIN membresia m ON m.id_cliente = c.id_cliente ORDER BY m.fecha_vencimiento ASC;')
   res.render('mostrarClientes',{resultado: resultado})
   console.log(resultado)
})

ruta.post('/upload', subida.single('subirArchivo'), function (req, res, next) {
    
    res.redirect('/subirImagen')
     const numFile = req.file.filename;

     try {
        con.query(`INSERT INTO imagenes (imagenes) values ('${numFile}')`)
     } catch (error) {
        console.log('no se pudo insertar el valor');
     }    
})

/* ruta.get('/mitrol', api); */

//Trabajo veterinaria VIERA
ruta.get('/Veterinaria', prueba )
ruta.get('/registroMascotas', regMas)
ruta.get('/registroUser', regUser)
ruta.get('/registroMembresia', regMem )

ruta.post('/postMembresia', (req, res)=>{
   console.log(req.body)
   let membresia = req.body.membresia;
   
   let tip_membresia = req.body.tip_membresia;
   let fecha_inicio = req.body.fecha_inicio;
   let fecha_vencimiento = req.body.fecha_vencimiento;
   let id_cliente = req.body.id_cliente;

   try {
      let insertar =  conn.query(`INSERT INTO membresia(tipo_membresia, fecha_inicio, fecha_vencimiento, costo, id_cliente) values ('${tip_membresia}','${fecha_inicio}','${fecha_vencimiento}','250.5',${id_cliente})`)
   } catch (error) {
      console.log('no se pudo insertar el valor');
   }
})

ruta.post('/postUser', (req, res)=>{
   let nombre = req.body.nombre;
   
   let email = req.body.email;
   let telefono = req.body.telefono;
   let direccion = req.body.direccion;
   let now = moment().format('YYYY-MM-DD HH:mm:ss')
   console.log(req.body)

   try {
      let insertar =  conn.query(`INSERT INTO clientes(nombre, correo_electronico, telefono, direccion, fecha_registro) values ('${nombre}','${email}','${telefono}','${direccion}','${now}')`)
     
   } catch (error) {
       console.log('no se pudo insertar el valor');
    }    

   console.log(req.body)
})

ruta.post('/postMascotas', subida.single('subirImagenMas'), function (req, res, next) {
 try { 
   let id_mascota = req.body.id_mascota;
   let nombre = req.body.nombre;
   let fecha_nacimiento = req.body.fecha_nacimiento;
   let especie = req.body.especie;
   let raza = req.body.raza;
   let sexo = req.body.sexo;
   let id_cliente = req.body.id_cliente;
   let imagen_mascota = req.file.filename;
   
    
   /* console.log(req.file.filename) */
   console.log(req.body);
   console.log(req.file.filename)

   try {
      let insertar = conn.query(`INSERT INTO mascotas(nombre, fecha_nacimiento, especie, raza, sexo, id_cliente, imagen) values ('${nombre}','${fecha_nacimiento}','${especie}','${raza}','${sexo}','${id_cliente}','${imagen_mascota}') `)
      res.redirect('/Veterinaria') 
   } catch (error) {
       console.log('no se pudo insertar el valor');
    }    
} catch (error) {
   
} 
  
   
}
   

  
  
 )

export default ruta;