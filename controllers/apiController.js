import axios  from 'axios';

const getJokes = async (req, res) => {
    const { type } = req.query;
    console.log(req.query);
    try {
        if (!type) {
            // Devolver un chiste aleatorio si no se especifica el tipo
            const randomJoke = await getRandomJoke();
            res.status(200).json(randomJoke);
        } else if (type === 'Chuck') {
            // Obtener un chiste de Chuck Norris
            const chuckJoke = await getChuckJoke();
            res.status(200).json(chuckJoke);
        } else if (type === 'Dad') {
            // Obtener un chiste de Dad Jokes
            const dadJoke = await getDadJoke();
            res.status(200).json(dadJoke);
        } else {
            // Manejar caso donde el tipo no es válido
            res.status(400).json({ error: 'Tipo de chiste inválido' });
        }
    } catch (error) {
        console.error('Error al obtener el chiste:', error.message);
        res.status(500).json({ error: 'Error al obtener el chiste' });
    }    
};
// Función para obtener un chiste aleatorio
async function getRandomJoke() {
    // Implementación para obtener un chiste aleatorio de Chuck Norris o Dad Jokes
    const jokes = ['Chuck', 'Dad'];
    const randomType = jokes[Math.floor(Math.random() * jokes.length)];

    res.json(randomType);
  
    if (randomType === 'Chuck') {
      return await getChuckJoke();
    } else if (randomType === 'Dad') {
      return await getDadJoke();
    }
}

// Función para obtener un chiste de Chuck Norris
async function getChuckJoke() {
    const response = await axios.get(process.env.CHUCK_API);
    return { joke: response.data.value, type: 'Chuck Norris' };
}

// Función para obtener un chiste de Dad Jokes
async function getDadJoke() {
    const response = await axios.get(process.env.HAZDAD_API, {
        headers: { 'Accept': 'application/json' }
    });
    return { joke: response.data.joke, type: 'Dad Joke' };
}

export {
    getJokes
}