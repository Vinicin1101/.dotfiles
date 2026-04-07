#!/usr/bin/python3

import subprocess
import json

def get_sensors():
    try:
        out = subprocess.check_output(["sensors", "-j"], text=True)
        return json.loads(out)
    except Exception as e:
        print(json.dumps({"text": f"Error: {e}"}))
        exit(1)

data = get_sensors()
gpu = data["amdgpu-pci-0500"]
temp  = gpu["edge"]["temp1_input"]
power = gpu["PPT"]["power1_input"]
freq  = gpu["sclk"]["freq1_input"]/1000000000

output = {
        "text": f"{temp:.0f}°C",
        "tooltip": f"{power:.0f}W | {freq:.3f}GHz"
}

print(json.dumps(output))

