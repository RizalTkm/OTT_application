const kbaseUrl = 'https://api.themoviedb.org/3';
const imageappendurl = 'https://image.tmdb.org/t/p/w500';
const apikey = '86c76cc233b9994997b495b7a724b2c2';
const videoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
];

class ApiEndPoints {
  static const downloadsEndPoint = '$kbaseUrl/trending/all/day?api_key=$apikey';
  static const searchEndpoint = '$kbaseUrl/search/movie?api_key=$apikey';
  static const hotAndNewMovieEndpoint =
      '$kbaseUrl/discover/movie?api_key=$apikey';

  static const hotandNewTvEndpoint = '$kbaseUrl/discover/tv?api_key=$apikey';
}
