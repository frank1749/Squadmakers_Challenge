import express from 'express';
import { getJokes } from '../controllers/apiController.js';
import { createJoke, updateJoke, deleteJoke, getLocalJokes } from '../controllers/jokeController.js';

const router = express.Router()

router.get('/', getJokes);

router.post('/createJoke', createJoke);
router.put('/updateJoke/:id', updateJoke);
router.delete('/deleteJoke/:id', deleteJoke);
router.get('/getLocalJokes', getLocalJokes);

export default router;