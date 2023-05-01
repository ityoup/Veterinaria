import express, { urlencoded } from "express";
import rutas from "./routes/rutas.routes.js";
import morgan from "morgan";


const app = express();
const puerto = 5000;
app.use(express.urlencoded({ extended: false }))


app.use(express.static('public'));

app.use(morgan('dev'))
app.use(rutas);
app.set('view engine', 'ejs');

app.listen(puerto, () => {
  console.log(`http://192.168.40.118:${puerto}`)
})
//d

