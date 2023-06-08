
class Book{
  final String image;
  final String label;
  final String detail;
  final String rating;
  final String genre;

  Book({
    required this.image,
    required this.label,
    required this.detail,
    required this.genre,
    required this.rating
});
}

final books = [
  Book(
      image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2qkJLjkVrYGC7JvdfFVZQU-LIVBDggNsIHxmb8SOjLV3HsVnu',
      label: 'To Kill a Mockingbird',
      detail: 'The story, told by Jean Louise Finch, takes place during three years (1933–35) of the Great Depression in the fictional town of Maycomb, Alabama, the seat of Maycomb County. Nicknamed Scout, the narrator,',
      genre: 'Horror',
      rating: '⭐⭐⭐⭐⭐'
  ),
  Book(
      image: 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1572292455-51rxEvLljUL.jpg?crop=1xw:0.972xh;center,top&resize=980:*',
      label: 'Life Of Pie',
      detail: "After the sinking of a cargo ship, a solitary lifeboat remains bobbing on the wild blue Pacific. The only survivors from the wreck are a sixteen-year-old boy named Pi, a hyena, a wounded zebra, an orangutan—and a 450-pound Royal Bengal tiger.",
      genre: 'Yann Martel',
      rating: '⭐⭐⭐⭐⭐'
  ),
  Book(
      image: 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1572292481-41TxXqToCCL.jpg?crop=0.952xw:1xh;center,top&resize=980:*',
      label: 'The Three Musketeers',
      detail: "The Three Musketeers is a novel by Alexandre Dumas. Set in the 17th century, it recounts the adventures of a young man named d'Artagnan after he leaves home to travel to Paris, to join the Musketeers of the Guard. D'Artagnan is not one of the musketeers of the title; those being his friends Athos, Porthos and Aramis, inseparable friends who live by the motto 'all for one, one for all'",
      genre: ' Alexandre Dumas',
      rating: '⭐⭐⭐⭐⭐'
  ),
  Book(
      image: 'https://m.media-amazon.com/images/P/0375842209.01._SCLZZZZZZZ_SX500_.jpg',
      label: 'The Book Thief ',
      detail: 'The story, told by Jean Louise Finch, takes place during three years (1933–35) of the Great Depression in the fictional town of Maycomb, Alabama, the seat of Maycomb County. Nicknamed Scout, the narrator,',
      genre: 'Markus Zusak',
      rating: '⭐⭐⭐⭐⭐'
  ),  Book(
      image: 'https://m.media-amazon.com/images/P/0547251270.01._SCLZZZZZZZ_SX500_.jpg',
      label: 'A Long Walk to Water',
      detail: "A Long Walk to Water begins as two stories, told in alternating sections, about two eleven-year-olds in Sudan, a girl in 2008 and a boy in 1985. The girl, Nya, is fetching water from a pond that is two hours’ walk from her home: she makes two trips to the pond every day.",
      genre: 'Linda Sue Park',
      rating: '⭐⭐⭐⭐⭐'
  ),  Book(
      image: 'https://m.media-amazon.com/images/P/014240733X.01._SCLZZZZZZZ_SX500_.jpg',
      label: 'The Outsiders',
      detail: "The Outsiders is a dramatic and enduring work of fiction that laid the groundwork for the YA genre. S. E. Hinton's classic story of a boy who finds himself on the outskirts of regular society remains as powerful today as it was the day it was first published. ",
      genre: ' S. E. Hinton',
      rating: '⭐⭐⭐⭐'
  ),
];