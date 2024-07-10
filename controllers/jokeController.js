import jokesModel from '../models/ApiModel.js';
import { validateObjectId, handleNotFoundError } from '../utils/index.js';

const createJoke = async (req, res) => {
    if(Object.values(req.body).includes('')){
        return res.status(400).json({
            msg: 'El campo jokeName es obligatorio'
        });
    }
    try {
        const service = new jokesModel(req.body);
        const result = await service.save();
        res.json(result);
    } catch (error) {
        console.log(error);
    }
};

const updateJoke = async (req, res) => {
    const { id } = req.params;
    // Validar objectID
    if(validateObjectId(id, res)) return;
    // Validar que exista
    const service = await jokesModel.findById(id);
    if(!service) {
        return handleNotFoundError('No existe registro', res);
    };
    // Escribimos en el objeto
    service.jokeName = req.body.jokeName || service.jokeName;

    try {
        await service.save();
        res.json({
            msg: 'El chiste se actualizó exitosamente'
        });
    } catch (error) {
        console.log(error);
    }
};

const deleteJoke = async (req, res) => {
    const { id } = req.params;
    // Validar objectID
    if(validateObjectId(id, res)) return;
    // Validar que exista
    const service = await jokesModel.findById(id);
    if(!service) {
        return handleNotFoundError('No existe registro', res);
    };

    try {
        await service.deleteOne();
        res.json({
            msg: 'Chiste eliminado exitosamente'
        });
    } catch (error) {
        console.log(error);
    }
};

const getLocalJokes = async (req, res) => {
    try {
        const jokes = await jokesModel.find();
        res.json(jokes);
    } catch (error) {
        console.log(error);
    }
};

export {
    createJoke,
    updateJoke,
    deleteJoke,
    getLocalJokes
}