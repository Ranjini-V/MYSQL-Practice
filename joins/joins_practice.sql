# joins

use practice;

describe citizens;
describe citizenLoc;

select c.name, cl.location, c.age from citizens as c join citizenLoc as cl on c.name = cl.name;
 
# age of people from New York
select c.name, cl.location, c.age from citizens as c join citizenloc as cl on c.name = cl.name where cl.location = 'New York';


