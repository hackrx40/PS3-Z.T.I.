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
        "category": "Consumer Food",
        "description": "Britannia Industries Limited"
    },
    {
        "id": "s_0002",
        "symbol": "INFY.NS",
        "category": "IT Services & Consulting",
        "description": "Infosys Limited"
    },
    {
        "id": "s_0003",
        "symbol": "KOTAKBANK.NS",
        "category": "Bank - Private",
        "description": "Kotak Mahindra Bank Limited"
    },
    {
        "id": "s_0004",
        "symbol": "DRREDDY.NS",
        "category": "Pharmaceuticals & Drugs",
        "description": "Dr. Reddy's Laboratories Limited"
    },
    {
        "id": "s_0005",
        "symbol": "WIPRO.NS",
        "category": "IT Services & Consulting",
        "description": "Wipro Limited"
    },
    {
        "id": "s_0006",
        "symbol": "TATACONSUM.NS",
        "category": "Tea/Coffee",
        "description": "Tata Consumer Products Limited"
    },
    {
        "id": "s_0007",
        "symbol": "ITC.NS",
        "category": "Diversified",
        "description": "ITC Limited"
    },
    {
        "id": "s_0008",
        "symbol": "M&M.NS",
        "category": "Automobile - Auto & Truck Manufacturers",
        "description": "Mahindra & Mahindra Limited"
    },
    {
        "id": "s_0009",
        "symbol": "NESTLEIND.NS",
        "category": "Consumer Food",
        "description": "Nestlé India Limited"
    },
    {
        "id": "s_0010",
        "symbol": "TITAN.NS",
        "category": "Diamond & Jewellery",
        "description": "Titan Company Limited"
    },
    {
        "id": "s_0011",
        "symbol": "BHARTIARTL.NS",
        "category": "Telecommunication - Service Provider",
        "description": "Bharti Airtel Limited"
    },
    {
        "id": "s_0012",
        "symbol": "TCS.NS",
        "category": "IT Services & Consulting",
        "description": "Tata Consultancy Services Limited"
    },
    {
        "id": "s_0013",
        "symbol": "APOLLOHOSP.NS",
        "category": "Hospital & Healthcare Services",
        "description": "Apollo Hospitals Enterprise Limited"
    },
    {
        "id": "s_0014",
        "symbol": "BAJFINANCE.NS",
        "category": "NBFC",
        "description": "Bajaj Finance Limited"
    },
    {
        "id": "s_0015",
        "symbol": "JSWSTEEL.NS",
        "category": "Iron & Steel",
        "description": "JSW Steel Limited"
    },
    {
        "id": "s_0016",
        "symbol": "MARUTI.NS",
        "category": "Automobile - Passenger Cars",
        "description": "Maruti Suzuki India Limited"
    },
    {
        "id": "s_0017",
        "symbol": "HINDUNILVR.NS",
        "category": "Household & Personal Products",
        "description": "Hindustan Unilever Limited"
    },
    {
        "id": "s_0018",
        "symbol": "TECHM.NS",
        "category": "IT Services & Consulting",
        "description": "Tech Mahindra Limited"
    },
    {
        "id": "s_0019",
        "symbol": "ADANIPORTS.NS",
        "category": "Transport Infrastructure",
        "description": "Adani Ports and Special Economic Zone Limited"
    },
    {
        "id": "s_0020",
        "symbol": "NTPC.NS",
        "category": "Power Generation/Distribution",
        "description": "NTPC Limited"
    },
    {
        "id": "s_0021",
        "symbol": "HINDALCO.NS",
        "category": "Iron & Steel",
        "description": "Hindalco Industries Limited"
    },
    {
        "id": "s_0022",
        "symbol": "INDUSINDBK.NS",
        "category": "Bank - Private",
        "description": "IndusInd Bank Limited"
    },
    {
        "id": "s_0023",
        "symbol": "HDFCLIFE.NS",
        "category": "Life & Health Insurance",
        "description": "HDFC Life Insurance Company Limited"
    },
    {
        "id": "s_0024",
        "symbol": "TATASTEEL.NS",
        "category": "Iron & Steel",
        "description": "Tata Steel Limited"
    },
    {
        "id": "s_0025",
        "symbol": "BPCL.NS",
        "category": "Refineries",
        "description": "Bharat Petroleum Corporation Limited"
    },
    {
        "id": "s_0026",
        "symbol": "GRASIM.NS",
        "category": "Diversified",
        "description": "Grasim Industries Limited"
    },
    {
        "id": "s_0027",
        "symbol": "HDFCBANK.NS",
        "category": "Bank - Private",
        "description": "Housing Development Finance Corporation Limited"
    },
    {
        "id": "s_0028",
        "symbol": "ONGC.NS",
        "category": "Oil Exploration and Production",
        "description": "Oil and Natural Gas Corporation Limited"
    },
    {
        "id": "s_0029",
        "symbol": "SBIN.NS",
        "category": "Bank - Public",
        "description": "State Bank of India"
    },
    {
        "id": "s_0030",
        "symbol": "HDFC.NS",
        "category": "Finance - Housing",
        "description": "Housing Development Finance Corporation Limited"
    },
    {
        "id": "s_0031",
        "symbol": "EICHERMOT.NS",
        "category": "Automobile - LCVS/ HVCS",
        "description": "Eicher Motors Limited"
    },
    {
        "id": "s_0032",
        "symbol": "ICICIBANK.NS",
        "category": "Bank - Private",
        "description": "ICICI Bank Limited"
    },
    {
        "id": "s_0033",
        "symbol": "AXISBANK.NS",
        "category": "Bank - Private",
        "description": "Axis Bank Limited"
    },
    {
        "id": "s_0034",
        "symbol": "RELIANCE.NS",
        "category": "Oil Exploration and Production",
        "description": "Reliance Industries Limited"
    },
    {
        "id": "s_0035",
        "symbol": "UPL.NS",
        "category": "Pesticides & Agrochemicals",
        "description": "UPL Limited"
    },
    {
        "id": "s_0036",
        "symbol": "LT.NS",
        "category": "Engineering & Construction",
        "description": "Larsen & Toubro Limited"
    },
    {
        "id": "s_0037",
        "symbol": "CIPLA.NS",
        "category": "Pharmaceuticals & Drugs",
        "description": "Cipla Limited"
    },
    {
        "id": "s_0038",
        "symbol": "SUNPHARMA.NS",
        "category": "Pharmaceuticals & Drugs",
        "description": "Sun Pharmaceutical Industries Limited"
    },
    {
        "id": "s_0039",
        "symbol": "BAJAJFINSV.NS",
        "category": "Finance - Investment",
        "description": "Bajaj Finserv Limited"
    },
    {
        "id": "s_0040",
        "symbol": "HEROMOTOCO.NS",
        "category": "Automobile - 2 & 3 Wheelers",
        "description": "Hero MotoCorp Limited"
    },
    {
        "id": "s_0041",
        "symbol": "DIVISLAB.NS",
        "category": "Pharmaceuticals & Drugs",
        "description": "Divi's Laboratories Limited"
    },
    {
        "id": "s_0042",
        "symbol": "POWERGRID.NS",
        "category": "Power Generation/Distribution",
        "description": "Power Grid Corporation of India Limited"
    },
    {
        "id": "s_0043",
        "symbol": "SBILIFE.NS",
        "category": "Life & Health Insurance",
        "description": "SBI Life Insurance Company Limited"
    },
    {
        "id": "s_0044",
        "symbol": "ASIANPAINT.NS",
        "category": "Paints",
        "description": "Asian Paints Limited"
    },
    {
        "id": "s_0045",
        "symbol": "ADANIENT.NS",
        "category": "Trading",
        "description": "Adani Enterprises Limited"
    },
    {
        "id": "s_0046",
        "symbol": "TATAMOTORS.NS",
        "category": "Automobile - LCVS/ HVCS",
        "description": "Tata Motors Limited"
    },
    {
        "id": "s_0047",
        "symbol": "ULTRACEMCO.NS",
        "category": "Cement",
        "description": "UltraTech Cement Limited"
    },
    {
        "id": "s_0048",
        "symbol": "HCLTECH.NS",
        "category": "IT Services & Consulting",
        "description": "HCL Technologies Limited"
    },
    {
        "id": "s_0049",
        "symbol": "COALINDIA.NS",
        "category": "Coal",
        "description": "Coal India Limited"
    },
    {
        "id": "s_0050",
        "symbol": "BAJAJ-AUTO.NS",
        "category": "Automobile - 2 & 3 Wheelers",
        "description": "Bajaj Auto Limited"
    }
]