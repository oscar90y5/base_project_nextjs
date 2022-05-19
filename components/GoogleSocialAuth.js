import React, { Component } from 'react';
import GoogleLogin from 'react-google-login';

class GoogleSocialAuth extends Component {
    render() {
        const googleResponse = (response) => {
            console.log(response);
        }
        return (
            <div className="App">
                <h1>LOGIN WITH GOOGLE</h1>

                <GoogleLogin
                    clientId="467579908620-2lvhaihbi35ku4fm3gnaasqjnahqudk2.apps.googleusercontent.com"
                    buttonText="LOGIN WITH GOOGLE"
                    onSuccess={googleResponse}
                    onFailure={googleResponse}
                />
            </div>
        );
    }
}

export default GoogleSocialAuth;