import 'package:favourite_movies/models/Movie.dart';

class MovieDao {

  static final List<Movie> movies = [
    const Movie(
      id: '1',
      title: 'Iron Man',
      year: '2008',
      plot: 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.',
      rating: '79',
      coverURL: 'https://image.tmdb.org/t/p/w640/848chlIWVT41VtAAgyh9bWymAYb.jpg',
      staring: 'Robert Downey Jr., Gwyneth Paltrow',
    ),
    const Movie(
      id: '2',
      title: 'The Avengers',
      year: '2012',
      plot: 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.',
      rating: '81',
      coverURL: 'https://image.tmdb.org/t/p/w640/cezWGskPY5x7GaglTTRN4Fugfb8.jpg',
      staring: 'Robert Downey Jr., Chris Evans',
    ),
    const Movie(
      id: '3',
      title: 'Guardians of the Galaxy',
      year: '2014',
      plot: 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.',
      rating: '81',
      coverURL: 'https://image.tmdb.org/t/p/w640/y31QB9kn3XSudA15tV7UWQ9XLuW.jpg',
      staring: 'Chris Pratt, Bradley Cooper',
    ),
    const Movie(
      id: '4',
      title: 'Deadpool',
      year: '2016',
      plot: 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.',
      rating: '80',
      coverURL: 'https://image.tmdb.org/t/p/w640/inVq3FRqcYIRl2la8iZikYYxFNR.jpg',
      staring: 'Ryan Reynolds, Morena Baccarin',
    ),
    const Movie(
      id: '5',
      title: 'Doctor Strange',
      year: '2016',
      plot: 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.',
      rating: '75',
      coverURL: 'https://image.tmdb.org/t/p/w640/dNrpCiRWrCNZLnEk16GCgaTOYEz.jpg',
      staring: 'Benedict Cumberbatch, Chiwetel Ejiofor',
    ),
    const Movie(
      id: '6',
      title: 'Tron: Legacy',
      year: '2010',
      plot: 'The son of a virtual world designer goes looking for his father and ends up inside the digital world that his father designed. He meets his father\'s corrupted creation and a unique ally who was born inside the digital world.',
      rating: '68',
      coverURL: 'https://image.tmdb.org/t/p/w640/eZW5Rv0peoGrC0RY12lwzoLPwmx.jpg',
      staring: 'Garrett Hedlund, Olivia Wilde',
    ),
  ];

  static Movie getPlanetById(id) {
    return movies
      .where((m) => m.id == id)
      .first;
  }
}