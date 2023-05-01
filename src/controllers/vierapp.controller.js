
import { con } from "./db.js"

// Ruta para ruta raiz
export const rutaInicial = async (req, res) => {
    res.render('HUB')
    let ip = req.socket.remoteAddress.replace(/^.*:/, '');
    console.log(ip);
    //LE hacemos fetch a la api para tener los datos de la ip
    try {
        const response = await fetch(`https://ipwho.is/${ip}?lang=es`)
            .then(response => response.json())
            .then(data => {

                //Variables dentro del json que voy a necesitar
                let datos = {
                    continente: `${data.continent}`,
                    pais: `${data.country}`,
                    region: `${data.region}`,
                    isp: `${data.connection.isp}`,
                }
                console.log(datos);
               
                    con.query(`INSERT INTO location (ip, continente, pais, region, isp) values ('${ip}','${datos.continente}','${datos.pais}','${datos.region}','${datos.isp}')`)
                    console.log("no se pudo insertar dentro de la base de datos")
                
            });
    } catch (error) {
        console.log("No se pudo insertar");
    }
}

export const num = (req, res) => {

    let num = req.query.numero;
    var llave = new Headers();
    llave.append("apikey", "WVXNIGdPwUGRoGXPcZdh30ajWgQiqzia");

    var tipo = {
        method: 'GET',
        redirect: 'follow',
        headers: llave
    };

    fetch(`https://api.apilayer.com/number_verification/validate?number=${num}`, tipo)
        .then(response => response.json())
        .then(result => {
            res.send(result);
        })
        .catch(error => console.log('error', error));
}


export const subirImagen = async (req, res) => {
    const [resultados] = await con.query("Select * from imagenes");
    res.render('subirImagen', {resultados:resultados})

}