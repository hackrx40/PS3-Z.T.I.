import React from 'react'
import './Home.css'

export default function Home() {
    return (
        <div className='home__container'>
            <p className='home__ps'>Problem Statement 3: Suggest Me A Stock</p>
            <p className='home__team'>Team: Z.T.I.</p>
            <p className='home__description' style={{ fontSize: "1.4rem" }}>The AI that knows your stock preferences and recommends the best ones for you.</p>
            <p className='home__description' style={{ fontSize: "1.4rem" }}>This AI application takes into account a variety of factors focused on the user profile such as the stock preferences (holdings and watchlist), the stock category user deals in and the current happenings(news and trends) to generate a list of recommended stocks</p>
        </div>
    )
}
