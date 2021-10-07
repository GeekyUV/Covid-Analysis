Select *
From [Portfolio Project Yuvraj]..['Covid Deaths']
Where continent is not null 
order by 3,4


Select Location, date, total_cases, new_cases, total_deaths, population
From [Portfolio Project Yuvraj]..['Covid Deaths']
Where continent is not null 
order by 1,2

-- Total Cases vs Total Deaths
-- Shows likelihood of dying if you come in contact with corona virus

Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From [Portfolio Project Yuvraj]..['Covid Deaths']
Where location like '%states%'
and continent is not null 
order by 1,2

-- Total Cases vs Population
-- Shows what percentage of population infected with Covid

Select Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From [Portfolio Project Yuvraj]..['Covid Deaths']
--Where location like '%states%'
order by 1,2

-- Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From [Portfolio Project Yuvraj]..['Covid Deaths']
--Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc

-- Countries with Highest Death Count per Population

Select Location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From [Portfolio Project Yuvraj]..['Covid Deaths']
--Where location like '%states%'
Where continent is not null 
Group by Location
order by TotalDeathCount desc

-- Showing contintents with the highest death count per population

Select continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
From [Portfolio Project Yuvraj]..['Covid Deaths']
--Where location like '%states%'
Where continent is not null 
Group by continent
order by TotalDeathCount desc






