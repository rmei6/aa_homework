const fetchSearchGiphys = (searchTerm) => {
    return $.ajax({
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=99Y0hxmIqovmvxlLBDvVRlcbCVDwZAGB&limit=2`,
        method: "GET",
      });
  };
  
  export default fetchSearchGiphys;