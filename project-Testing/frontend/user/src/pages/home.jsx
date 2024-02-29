import React from 'react';
import Header from '../components/header';
import Footer from '../components/footer';
import '../styles.css';

function Home (){

  return (
    <>
      <Header/>
      <div style={{marginBottom: 100}}>
        <section>
        <div className="main" id="Home">
            <div className="main_content">
                <div className="main_text">
                    <h1>Shopping Bag<br/><span>Collection</span></h1>
                    <p>
                        Welcome to your one-stop destination for stylish and practical shopping bags!<br/>
                        Discover a curated collection of  durability and sustainability in mind.<br/>
                        From sleek minimalist styles to bold prints, each bag is designed to elevate. <br/>
                        your shopping experience while keeping you organized on the go.<br/> 
                        Shop now and add a touch of flair to your daily outings!
                    </p>
                </div>
                <div className="main_image">
                    <img src="/image/bag.png"/>
                </div>
            </div>
            <div className="social_icon">
                <i className="fa-brands fa-facebook-f"></i>
                <i className="fa-brands fa-twitter"></i>
                <i className="fa-brands fa-instagram"></i>
                <i className="fa-brands fa-linkedin-in"></i>
            </div>
            <div className="button" >
                <a href='/products'>SHOP NOW</a>
                <i className="fa-solid fa-chevron-right"></i>
            </div>
        </div>
        </section>
      </div>
      <Footer/>
    </>
  )
}

export default Home
