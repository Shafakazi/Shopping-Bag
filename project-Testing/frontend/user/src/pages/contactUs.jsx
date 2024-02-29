import React from 'react';
import Header from '../components/header';
import Footer from '../components/footer';
import '../styles.css';

function ContactUs() {
  return (
    <>
      <Header />
      <div className="contact">

        <h1>Contact<span>Us</span></h1>

        <p>
           Have a question about our shopping bags or need assistance with your order? Our dedicated customer service team is here to help! Feel free to reach out to us via email at support@storename.com or give us a call at 1-800-123-4567. We're available to assist you Monday through Friday from 9 am to 5 pm EST. Your satisfaction is our top priority, and we're committed to providing you with exceptional service every step of the way.

            Feel free to let me know if you need further adjustments or additional information!
        </p>

      </div>

      <div className="map">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d122809.84860114464!2d74.42603886189339!3d15.866697517099992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbf669f5095362f%3A0x7e34b31edcdefb5f!2sBelagavi%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1706183085906!5m2!1sen!2sin"
          width="100%" height="500" style={{ border: 0 }} allowFullScreen="" loading="lazy"
          referrerPolicy="no-referrer-when-downgrade"></iframe>
      </div>
      <Footer />
    </>
  )
}

export default ContactUs;
