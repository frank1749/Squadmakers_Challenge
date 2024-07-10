
// Función para calcular el MCM (mínimo común múltiplo)
const mcm_operation = (a, b) => {
    const gcd = (x, y) => !y ? x : gcd(y, x % y);
    return (a * b) / gcd(a, b);
};

const calculateMCM = (numbers) => {
    return numbers.reduce((acc, curr) => mcm_operation(acc, curr));
};

// Endpoint para calcular el MCM de una lista numérica
const getMCM = async (req, res) => {
    const numbers = req.query.numbers.split(',').map(Number);
    if (numbers.some(isNaN)) {
        return res.status(400).json({ error: 'Números Inválidos' });
    }
    const result = calculateMCM(numbers);
    res.json({
        msg: 'Servicio ejecutado exitosamente',
        mcm: result
    });
};

// Endpoint para incrementar un número
const getIncrement = async (req, res) => {
    const number = parseInt(req.query.number);
    if (isNaN(number)) {
        return res.status(400).json({ error: 'Número Inválido' });
    }
    const result = number + 1;
    res.json({
        msg: 'Servicio ejecutado exitosamente',
        mcm: result
    });
};

export {
    getMCM,
    getIncrement
}