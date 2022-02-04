import express from 'express';
import { v4 as uuidv4 } from 'uuid';

const router = express.Router();

let users = [];

router.get('/', (req, res) => {
    console.log(users);
    res.send(users);
});

router.post('/', (req, res) => {
    const user = req.body;
    users.push( { ... user, id: uuidv4() } );
    res.send(`User having name ${user.name} added to the database`);
});

router.get('/:id', (req, res) => {
    const { id } = req.params;
    const findUser = users.find((user) => user.id == id);
    res.send(findUser);
});

router.delete('/:id', (req, res) => {
    const { id } = req.params;
    users = users.filter((user) => user.id != id);
    res.send(`User having id ${id} deleted successfully from database`);
});

router.put('/:id', (req, res) => {
    const { id } = req.params;
    const { name, password, gender, birthdate, age, country, phone } = req.body;

    const user = users.find((user) => user.id == id);

    if(name) user.name = name;
    if(password) user.password = password;
    if(gender) user.gender = gender;
    if(birthdate) user.birthdate = birthdate;
    if(age) user.age = age;
    if(country) user.country = country;
    if(phone) user.phone = phone;
    
    res.send(`User having id ${id} has been updated successfully`);
});

export default router;