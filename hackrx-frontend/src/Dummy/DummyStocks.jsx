export const shuffleArray = () => {
    let array = DUMMY_STOCKS
    for (var i = array.length - 1; i > 0; i--) {

        // Generate random number
        var j = Math.floor(Math.random() * (i + 1));

        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}
export const randomStocks = () => {
    const randomStocks = shuffleArray(DUMMY_STOCKS);
    const newRandomStocks = []
    for (let i = 0; i < 5; i++) {
        newRandomStocks.push(randomStocks[i]);
    }
    return newRandomStocks;
}

export const DUMMY_STOCKS = [
    {
        "id": "s_0001",
        "symbol": "BRITANNIA.NS",
        "name": "Britannia",
        "category": "Consumer Food"
    },
    {
        "id": "s_0002",
        "symbol": "INFY.NS",
        "name": "Infosys",
        "category": "IT Services & Consulting"
    },
    {
        "id": "s_0003",
        "symbol": "KOTAKBANK.NS",
        "name": "Kotak Mahindra Bank",
        "category": "Bank - Private"
    },
    {
        "id": "s_0004",
        "symbol": "DRREDDY.NS",
        "name": "Dr. Reddy's Laboratories",
        "category": "Pharmaceuticals & Drugs"
    },
    {
        "id": "s_0005",
        "symbol": "WIPRO.NS",
        "name": "Wipro",
        "category": "IT Services & Consulting"
    },
    {
        "id": "s_0006",
        "symbol": "TATACONSUM.NS",
        "name": "Tata Consumer Products",
        "category": "Tea/Coffee"
    },
    {
        "id": "s_0007",
        "symbol": "ITC.NS",
        "name": "ITC",
        "category": "Diversified"
    },
    {
        "id": "s_0008",
        "symbol": "M&M.NS",
        "name": "Mahindra & Mahindra",
        "category": "Automobile - Auto & Truck Manufacturers"
    },
    {
        "id": "s_0009",
        "symbol": "NESTLEIND.NS",
        "name": "Nestlé India",
        "category": "Consumer Food"
    },
    {
        "id": "s_0010",
        "symbol": "TITAN.NS",
        "name": "Titan",
        "category": "Diamond & Jewellery"
    },
    {
        "id": "s_0011",
        "symbol": "BHARTIARTL.NS",
        "name": "Bharti Airtel",
        "category": "Telecommunication - Service Provider"
    },
    {
        "id": "s_0012",
        "symbol": "TCS.NS",
        "name": "Tata Consultancy Services",
        "category": "IT Services & Consulting"
    },
    {
        "id": "s_0013",
        "symbol": "APOLLOHOSP.NS",
        "name": "Apollo Hospitals",
        "category": "Hospital & Healthcare Services"
    },
    {
        "id": "s_0014",
        "symbol": "BAJFINANCE.NS",
        "name": "Bajaj Finance",
        "category": "NBFC"
    },
    {
        "id": "s_0015",
        "symbol": "JSWSTEEL.NS",
        "name": "JSW Steel",
        "category": "Iron & Steel"
    },
    {
        "id": "s_0016",
        "symbol": "MARUTI.NS",
        "name": "Maruti Suzuki India",
        "category": "Automobile - Passenger Cars"
    },
    {
        "id": "s_0017",
        "symbol": "HINDUNILVR.NS",
        "name": "Hindustan Unilever",
        "category": "Household & Personal Products"
    },
    {
        "id": "s_0018",
        "symbol": "TECHM.NS",
        "name": "Tech Mahindra",
        "category": "IT Services & Consulting"
    },
    {
        "id": "s_0019",
        "symbol": "ADANIPORTS.NS",
        "name": "Adani Ports",
        "category": "Transport Infrastructure"
    },
    {
        "id": "s_0020",
        "symbol": "NTPC.NS",
        "name": "NTPC",
        "category": "Power Generation/Distribution"
    },
    {
        "id": "s_0021",
        "symbol": "HINDALCO.NS",
        "name": "Hindalco Industries",
        "category": "Iron & Steel"
    },
    {
        "id": "s_0022",
        "symbol": "INDUSINDBK.NS",
        "name": "IndusInd Bank",
        "category": "Bank - Private"
    },
    {
        "id": "s_0023",
        "symbol": "HDFCLIFE.NS",
        "name": "HDFC Life Insurance",
        "category": "Life & Health Insurance"
    },
    {
        "id": "s_0024",
        "symbol": "TATASTEEL.NS",
        "name": "Tata Steel",
        "category": "Iron & Steel"
    },
    {
        "id": "s_0025",
        "symbol": "BPCL.NS",
        "name": "Bharat Petroleum",
        "category": "Refineries"
    },
    {
        "id": "s_0026",
        "symbol": "GRASIM.NS",
        "name": "Grasim Industries",
        "category": "Diversified"
    },
    {
        "id": "s_0027",
        "symbol": "HDFCBANK.NS",
        "name": "HDFC Bank",
        "category": "Bank - Private"
    },
    {
        "id": "s_0028",
        "symbol": "ONGC.NS",
        "name": "ONGC",
        "category": "Oil Exploration and Production"
    },
    {
        "id": "s_0029",
        "symbol": "SBIN.NS",
        "name": "State Bank of India",
        "category": "Bank - Public"
    },
    {
        "id": "s_0030",
        "symbol": "HDFC.NS",
        "name": "HDFC",
        "category": "Finance - Housing"
    },
    {
        "id": "s_0031",
        "symbol": "EICHERMOT.NS",
        "name": "Eicher Motors",
        "category": "Automobile - LCVS/ HVCS"
    },
    {
        "id": "s_0032",
        "symbol": "ICICIBANK.NS",
        "name": "ICICI Bank",
        "category": "Bank - Private"
    },
    {
        "id": "s_0033",
        "symbol": "AXISBANK.NS",
        "name": "Axis Bank",
        "category": "Bank - Private"
    },
    {
        "id": "s_0034",
        "symbol": "RELIANCE.NS",
        "name": "Reliance Industries",
        "category": "Oil Exploration and Production"
    },
    {
        "id": "s_0035",
        "symbol": "UPL.NS",
        "name": "UPL",
        "category": "Pesticides & Agrochemicals"
    },
    {
        "id": "s_0036",
        "symbol": "LT.NS",
        "name": "Larsen & Toubro",
        "category": "Engineering & Construction"
    },
    {
        "id": "s_0037",
        "symbol": "CIPLA.NS",
        "name": "Cipla",
        "category": "Pharmaceuticals & Drugs"
    },
    {
        "id": "s_0038",
        "symbol": "SUNPHARMA.NS",
        "name": "Sun Pharmaceutical",
        "category": "Pharmaceuticals & Drugs"
    },
    {
        "id": "s_0039",
        "symbol": "BAJAJFINSV.NS",
        "name": "Bajaj Finserv",
        "category": "Finance - Investment"
    },
    {
        "id": "s_0040",
        "symbol": "HEROMOTOCO.NS",
        "name": "Hero MotoCorp",
        "category": "Automobile - 2 & 3 Wheelers"
    },
    {
        "id": "s_0041",
        "symbol": "DIVISLAB.NS",
        "name": "Divi's Laboratories",
        "category": "Pharmaceuticals & Drugs"
    },
    {
        "id": "s_0042",
        "symbol": "POWERGRID.NS",
        "name": "Power Grid Corporation of India",
        "category": "Power Generation/Distribution"
    },
    {
        "id": "s_0043",
        "symbol": "SBILIFE.NS",
        "name": "SBI Life Insurance",
        "category": "Life & Health Insurance"
    },
    {
        "id": "s_0044",
        "symbol": "ASIANPAINT.NS",
        "name": "Asian Paints",
        "category": "Paints"
    },
    {
        "id": "s_0045",
        "symbol": "ADANIENT.NS",
        "name": "Adani Enterprises",
        "category": "Trading"
    },
    {
        "id": "s_0046",
        "symbol": "TATAMOTORS.NS",
        "name": "Tata Motors",
        "category": "Automobile - LCVS/ HVCS"
    },
    {
        "id": "s_0047",
        "symbol": "ULTRACEMCO.NS",
        "name": "UltraTech Cement",
        "category": "Cement"
    },
    {
        "id": "s_0048",
        "symbol": "HCLTECH.NS",
        "name": "HCL Technologies",
        "category": "IT Services & Consulting"
    },
    {
        "id": "s_0049",
        "symbol": "COALINDIA.NS",
        "name": "Coal India",
        "category": "Coal"
    },
    {
        "id": "s_0050",
        "symbol": "BAJAJ-AUTO.NS",
        "name": "Bajaj Auto",
        "category": "Automobile - 2 & 3 Wheelers"
    }
]