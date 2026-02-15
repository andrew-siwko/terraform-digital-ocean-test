# TFE Registry: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
# a nice tutorial: https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean
# in the terraform environemnt to support access
export DIGITAL_OCEAN_TOKEN="your_personal_access_token"

# get the CLI:
curl -sL https://github.com/digitalocean/doctl/releases/download/v1.104.0/doctl-1.104.0-linux-amd64.tar.gz | tar -xzv
sudo mv doctl /usr/local/bin

# configure it with the PAT from the consile:
doctl auth init

# list regions:
doctl compute region list
# Slug    Name               Available
# nyc1    New York 1         true
# sfo1    San Francisco 1    false
# nyc2    New York 2         true
# ams2    Amsterdam 2        false
# sgp1    Singapore 1        true
# lon1    London 1           true
# nyc3    New York 3         true
# ams3    Amsterdam 3        true
# fra1    Frankfurt 1        true
# tor1    Toronto 1          true
# sfo2    San Francisco 2    true
# blr1    Bangalore 1        true
# sfo3    San Francisco 3    true
# syd1    Sydney 1           true
# atl1    Atlanta 1          true


doctl compute size list

# Slug                       Description                      Memory     VCPUs    Disk    Price Monthly    Price Hourly
# s-1vcpu-512mb-10gb         Basic                            512        1        10      4.00             0.005950
# s-1vcpu-1gb                Basic                            1024       1        25      6.00             0.008930
# s-1vcpu-1gb-intel          Basic Intel                      1024       1        25      7.00             0.010420
# s-1vcpu-1gb-35gb-intel     Basic Intel                      1024       1        35      8.00             0.011900
# s-1vcpu-2gb                Basic                            2048       1        50      12.00            0.017860
# s-1vcpu-2gb-intel          Basic Intel                      2048       1        50      14.00            0.020830
# s-1vcpu-2gb-70gb-intel     Basic Intel                      2048       1        70      16.00            0.023810
# s-2vcpu-2gb                Basic                            2048       2        60      18.00            0.026790
# s-2vcpu-2gb-intel          Basic Intel                      2048       2        60      21.00            0.031250
# s-2vcpu-2gb-90gb-intel     Basic Intel                      2048       2        90      24.00            0.035710
# s-2vcpu-4gb                Basic                            4096       2        80      24.00            0.035710
# s-2vcpu-4gb-intel          Basic Intel                      4096       2        80      28.00            0.041670
# s-2vcpu-4gb-120gb-intel    Basic Intel                      4096       2        120     32.00            0.047620
# c-2                        CPU-Optimized                    4096       2        25      42.00            0.062500
# s-2vcpu-8gb-160gb-intel    Basic Intel                      8192       2        160     48.00            0.071430
# s-4vcpu-8gb                Basic                            8192       4        160     48.00            0.071430
# s-4vcpu-8gb-intel          Basic Intel                      8192       4        160     56.00            0.083330
# g-2vcpu-8gb                General Purpose                  8192       2        25      63.00            0.093750
# s-4vcpu-8gb-240gb-intel    Basic Intel                      8192       4        240     64.00            0.095240
# gd-2vcpu-8gb               General Purpose 2x SSD           8192       2        50      68.00            0.101190
# m-2vcpu-16gb               Memory-Optimized                 16384      2        50      84.00            0.125000
# c-4                        CPU-Optimized                    8192       4        50      84.00            0.125000
# gpu-4000adax1-20gb         RTX 4000 Ada GPU Droplet - 1X    32768      8        500     565.44           0.760000
# gpu-l40sx1-48gb            L40S GPU Droplet - 1X            65536      8        500     1168.08          1.570000
# gpu-6000adax1-48gb         RTX 6000 Ada GPU Droplet - 1X    65536      8        500     1168.08          1.570000
# gpu-mi300x1-192gb          AMD MI300X - 1X                  245760     20       720     1480.56          1.990000
# gpu-h100x1-80gb            H100 GPU - 1X                    245760     20       720     2522.16          3.390000
# gpu-h200x1-141gb           Nvidia H200 - 1X                 245760     24       720     2559.36          3.440000
# gpu-mi300x8-1536gb         AMD MI300X - 8X                  1966080    160      2046    11844.48         15.920000
# gpu-h100x8-640gb           H100 GPU - 8X                    1966080    160      2046    17796.48         23.920000
# gpu-h200x8-1128gb          Nvidia H200 - 8X                 1966080    192      2046    20474.88         27.520000

doctl compute image list-distribution
# ID           Name                              Type    Distribution    Slug                    Public    Min Disk
# 135509519    9 x64                             base    Rocky Linux     rockylinux-9-x64        true      10
# 143033891    8 x64                             base    Rocky Linux     rockylinux-8-x64        true      10
# 159651797    22.04 (LTS) x64                   base    Ubuntu          ubuntu-22-04-x64        true      7
# 194271330    25.04 x64                         base    Ubuntu          ubuntu-25-04-x64        true      7
# 195932981    24.04 (LTS) x64                   base    Ubuntu          ubuntu-24-04-x64        true      7
# 197014428    AlmaLinux 10                      base    AlmaLinux       almalinux-10-x64        true      10
# 197131532    9 Stream x64                      base    CentOS          centos-stream-9-x64     true      10
# 197216326    10 x64                            base    Rocky Linux     rockylinux-10-x64       true      10
# 199561349    42 x64                            base    Fedora          fedora-42-x64           true      10
# 199888143    13 x64                            base    Debian          debian-13-x64           true      7
# 199888277    10 Stream x64                     base    CentOS          centos-stream-10-x64    true      10
# 199996745    12 x64                            base    Debian          debian-12-x64           true      7
# 200011362    AlmaLinux 9                       base    AlmaLinux       almalinux-9-x64         true      10
# 200011382    AlmaLinux 8                       base    AlmaLinux       almalinux-8-x64         true      10
# 203838782    NVIDIA AI/ML Ready                base    Ubuntu          gpu-h100x1-base         true      30
# 203839248    NVIDIA AI/ML Ready with NVLink    base    Ubuntu          gpu-h100x8-base         true      30
# 204596533    25.10 x64                         base    Ubuntu          ubuntu-25-10-x64        true      7
# 214204353    AMD AI/ML Ready Image             base    Ubuntu          gpu-amd-base            true      30


doctl compute certificate create --name terraform-key