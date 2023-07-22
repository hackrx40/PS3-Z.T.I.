import './Login.css'
import React, { useEffect, useState } from 'react'
import axios from 'axios';

export const users = [
    "C1", "C10", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18", "C19", "C2", "C20", "C21", "C3", "C4", "C5", "C6", "C7", "C76", "C8", "C80", "C81"
]


export default function Login() {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [loggedUser, setLoggedUser] = useState(null);
    const [ownedStocks, setOwnedStocks] = useState(null);
    const [watchlistStocks, setWatchlistStocks] = useState(null);
    const [recommendedStocks, setRecommendedStocks] = useState(null);
    const handleLogin = () => {
        if (users.includes(username.toUpperCase()) && password === 'password') {
            setLoggedUser(username)
        }
        else
            setLoggedUser(loggedUser);
    }
    useEffect(() => {
        const getOwnedStocks = () => {
            axios.post('/api/client',
                {
                    "symbol": username
                }
            )
                .then((response) => {
                    setOwnedStocks(response.data);
                    return response.data
                }).catch((error) => {
                    console.log(error);
                })
        }
        const getWatchlistStocks = () => {
            axios.post('/api/wtlist',
                {
                    "symbol": username
                }
            )
                .then((response) => {
                    setWatchlistStocks(response.data);
                    return response.data
                }).catch((error) => {
                    console.log(error);
                })
        }
        const getRecommendedStocks = () => {
            axios.post('/api/recc',
                {
                    "symbol": username
                }
            )
                .then((response) => {
                    setRecommendedStocks(response.data);
                    return response.data
                }).catch((error) => {
                    console.log(error);
                })
        }
        getOwnedStocks(username);
        getRecommendedStocks(username);
        getWatchlistStocks(username);
    }, [username, loggedUser])

    return (
        <div className='login__container'>
            <h1 className='login__title'>Login</h1>
            <div>
                <input onChange={(e) => setUsername(e.target.value)} placeholder='Username' />
                <input onChange={(e) => setPassword(e.target.value)} type='password' placeholder='Password' />
                <button onClick={() => handleLogin()}>Login</button>
            </div>
            <div className='login__user'>
                {loggedUser === null ? <p>Not logged in</p> : <p>{loggedUser.toUpperCase()}</p>}
                <p></p>
            </div>
            {loggedUser === null ? null :
                <div>
                    <div className='login__owned'>
                        <p className='login__title'>Owned Stocks</p>
                        {ownedStocks?.map((stock) => {
                            return <p>{stock}</p>
                        })}
                    </div>
                    <div className='login__watchlist'>
                        <p className='login__title'>Watchlist</p>
                        {watchlistStocks?.map((stock) => {
                            return <p>{stock}</p>
                        })}
                    </div>
                    <div className='login__recommended'>
                        <p className='login__title'>Recommended Stocks</p>
                        {recommendedStocks?.map((stock) => {
                            return <p>{stock}</p>
                        })}
                    </div>
                </div>
            }
        </div >
    )
}