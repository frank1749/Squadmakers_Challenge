import express from 'express';
import dotenv from 'dotenv';
import colors from 'colors';
import cors from 'cors';
import { db } from './config/db.js';
import servicesRoutes from './routes/servicesRoutes.js';

//Variables entorno
dotenv.config();

// Configuración app
const app = express();

// Leer datos de body
app.use(express.json());

// database
db();

// Habilito Cors
app.use(cors());

// Defino ruta
app.use('/api/v1/squadmakers', servicesRoutes);

// Defino puerto
const PORT = process.env.port || 4000;

app.listen(PORT, () => {
    console.log(colors.blue.bgCyan('Servidor esta corriendo en el puerto'), colors.bold(PORT));
})