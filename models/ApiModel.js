import mongoose from 'mongoose';

const apiModelSchema = mongoose.Schema({
    jokeName: {
        type: String,
        required: true,
        trim: true // Elimina espacios en blanco del String
    }
});

const jokesModel = mongoose.model('jokes', apiModelSchema);
export default jokesModel