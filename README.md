<div id="top"></div>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/jordanbelinsky/star-weather/">
    <img src="ios-marketing.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Star Weather</h3>

  <p align="center">
    A Star Wars themed weather app built for iOS. Inspired by Tom Scott's website that is no longer available to view.
    <br />
    <a href="https://github.com/jordanbelinsky/star-weather/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/jordanbelinsky/star-weather/issues">Report Bug</a>
    ·
    <a href="https://github.com/jordanbelinsky/star-weather/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#how-it-works">How it Works</a>
      <ul>
        <li><a href="#planets">Planets</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<br/>


<!-- ABOUT THE PROJECT -->
## About The Project

This is a project which aimed to create a weather app that along with providing updated weather data for your location, would show and describe a Star Wars planet that best matches the weather in your area.

This was lovingly created as an homage/inspired by Tom Scott, who had made a website called Star Wars weather using a Yahoo Weather API. Since then, Yahoo shut down said API, and Tom's project unfortunately became unusable as a result. I hoped to update his original idea, by making a native iOS application using SwiftUI, and the OpenWeather API for weather data.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [SwiftUI](https://developer.apple.com/xcode/swiftui/)
* [OpenWeather](https://openweathermap.org/api)

<p align="right">(<a href="#top">back to top</a>)</p>



## How It Works

I looked to screenshots/cached versions of Tom's website for inspiration of an algorithm for determining planets, while making some modifications myself as well. Using weather condition codes retrieved from the Open Weather API, I assign planets as follows:

Each planet has a day and night configuration, so the planet will match the time of day at your current location and display accordingly.

There is also a written description to go along with the photo for details sake.

### Planets

* Alderaan: <i>API fetch fail or unmatched weather condition code</i>
* Bespin: <i>mostly cloudy or hazy</i>
* Endor: <i>partly cloud or foggy</i>
* Hoth: <i>snow</i>
* Kamino: <i>rain</i>
* Tatooine: <i>clear or sandy/dusty</i>
* Yavin-4: <i>light clouds</i>


<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Refresh at each view load
- [ ] Pull to manually refresh
- [ ] Persistent location (no need to go through splash screen at each launch)

See the [open issues](https://github.com/jordanbelinsky/star-weather/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact


Email: [jordan.belinsky@outlook.com](mailto:jordan.belinsky@outlook.com)

Personal Website: [jordanbelinsky.ca](https://jordanbelinsky.ca)

Project Link: [https://github.com/jordanbelinsky/star-weather/](https://github.com/jordanbelinsky/star-weather/)

Twitter: [@jordan_belinsky](https://twitter.com/twitter_handle)





<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS
## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#top">back to top</a>)</p> -->



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/jordanbelinsky/star-weather/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/jordanbelinsky/star-weather/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/jordanbelinsky/star-weather/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/jordanbelinsky/star-weather/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/jordanbelinsky/star-weather/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/jordanbelinsky/
[product-screenshot]: images/screenshot.png
