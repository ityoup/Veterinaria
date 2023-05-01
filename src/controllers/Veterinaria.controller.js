import { conn  } from "./dbViera.js";

export const prueba = async (req, res)=>{
    res.render('homeVeterinaria')
     let [resultado] = await conn.query('select 1+1');
       // console.log(resultado);  
}

export const regMas = async (req, res)=>{
  res.render('registroMascotas')
}

export const regUser = async (req, res)=>{  
  res.render('registroUser')
}

export const regMem = async (req, res)=>{
  res.render('registroMembresia')
}

  


