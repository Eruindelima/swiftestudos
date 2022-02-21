

let skeleton = Enemy() //estou criando um novo inimigo chamdo esqueleto a partir da minha class Enemy
//skeleton.wingSpan como o esqueleto herda diretamente os atributos da classe enemy não se pode usar nada da classe Dragon
// pois Enemy é a super classe e dragon é a sub classe

let dragon = Dragon()
dragon.wingSpan = 5 //wingSpan só existe dentro da classe do Dragon(envergadura)
dragon.attackStrength = 15 //estou atribuindo da class ENEMY(poder de ataque)
dragon.talk(speech: "My teeth are swords! My claws are apears! My wings are a hurricane")//dragão falando
dragon.move() //move é uma atributo que existe dentro de enemy que é a super classe e pode ser usado por dragon que é da sub classe(movendo)
dragon.attack() //attack é um método de enemy herdado por dragon(atacando)









