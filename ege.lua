task.spawn(function()
    task.wait(2)
    WindUI:Notify({
        Title = "Loading...",
        Content = "This Script might take a little bit to load.",
        Duration = 5,
        Icon = "loader"
    })
    local delaySeconds = math.random(60, 300)
    task.wait(delaySeconds)
    WindUI:Notify({
        Title = "Discord Server",
        Content = "Please join the offical discord server for more scripts! If you're a content creator, make a video on this script and we will post it",
        Duration = 9,
        Icon = "youtube"
    })
end)
