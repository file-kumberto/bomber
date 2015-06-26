function messageValue() {
    wrapper.message1 = 0;
    wrapper.message2 = 0;
    wrapper.message3 = 0;
    for( var i = 0; i < 3; ) {
       var numberMessage = Math. round(Math.random()*2 + 1);

        if( message1 < 1 ) {
            message1 = numberMessage;
            console.debug("message1 " + wrapper.message1);
            i += 1;
        } else if( message1 !== numberMessage && message2 === 0) {
            message2 = numberMessage;
            console.debug("message2 " + wrapper.message2);
            i += 1;
        } else if (message1 !== numberMessage && message2 !== numberMessage) {
            message3 = numberMessage;
            console.debug("message3 " + wrapper.message3);
            i += 1;
        }
    }
};

