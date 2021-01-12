aliens = [
    {
      name: "X Æ A-12 Musk aka Chad",
      distance: 0.0000000000001 ,
      planet: "Area 51, Earth",
      img: "https://ibb.co/bzn5Z3k"
    },
    {
      name: "LilMayo",
      distance: 0.00001582002493716235,
      planet: "Mars",
      img: "https://ibb.co/rQQhtr7"
    },
    {
      name: "Chewbacca",
      distance: 347839744,
      planet: "Kashyyyk",
      img: "https://ibb.co/bzn5Z3k"
    }
  ]

aliens.each do |attributes|
    Alien.create attributes 
    puts"creating alien #{attributes}"
end

