--Mission 1

SELECT Name as [Suspect Name], WantedLevel
from [GTA].[Citizens]
where WantedLevel>=2

--Mission 2

SELECT Name as [Suspect Name],Type,Brand
from [GTA].[Citizens] as ci
join [GTA].[Vehicles] as ve
on ci.CitizenID = ve.OwnerID
where IsStolen =1

--Mission 3
SELECT Name as [Suspect Name],sum(Reward)
from [GTA].[Citizens] as ci
JOIN[GTA].[Assignments] as a
on ci.CitizenID=  a.CitizenID
 join [GTA].[Missions] as mi 
on a.MissionID=mi.MissionID
group by Name
order by sum(Reward) DESC

--mission 4
SELECT Name as [Suspect Name],Completed,speed,max(TimeSpent)
from [GTA].[Vehicles] as ve
join [GTA].[Citizens] as ci
on ci.CitizenID = ve.OwnerID
join [GTA].[Assignments] as a
on a.CitizenID=ci.CitizenID
join [GTA].[Missions] as mi
on mi.MissionID= a.MissionID
