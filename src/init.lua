local Players = game:GetService('Players');

local Soma = {};

function Soma.isCharacter(char: Instance?)
    if not char then return false; end;
    if not char:IsA('Model') then return false; end;
    
    local humanoid = Soma.humanoid(char);
    if not humanoid then return false; end;

    return true;
end;

function Soma.humanoid(char: Model)
    return char:FindFirstChildOfClass('Humanoid');
end;

function Soma.rootPart(char: Model)
    return char:FindFirstChild('HumanoidRootPart') :: BasePart?;
end;

function Soma.torso(char: Model)
    return char:FindFirstChild('Torso') :: BasePart?;
end;

function Soma.leftArm(char: Model)
    return char:FindFirstChild('Left Arm') :: BasePart?;
end;

function Soma.rightArm(char: Model)
    return char:FindFirstChild('Right Arm') :: BasePart?;
end;

function Soma.leftLeg(char: Model)
    return char:FindFirstChild('Left Leg') :: BasePart?;
end;

function Soma.rightLeg(char: Model)
    return char:FindFirstChild('Right Leg') :: BasePart?;
end;

function Soma.player(char: Model)
    return Players:GetPlayerFromCharacter(char);
end;

function Soma.isAlive(char: Model)
    local humanoid = Soma.humanoid(char);
    if not humanoid then return; end;

    return humanoid.Health > 0;
end;

return Soma;