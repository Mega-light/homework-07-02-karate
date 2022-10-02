function fn(){
    let env = karate.env;
    karate.log("karate.env system property was: ", env);

    if (!env){
        env = "stage"
    }

    let config = {
        env: env,
        _url: 'https://automationintesting.online/'
    }

    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);

    return config;
}