if [ -d "/srv/gitlab-ce/conf" ]; then
    echo "conf exists."
else 
    mkdir -p /srv/gitlab-ce/conf
fi

if [ -d "/srv/gitlab-ce/logs" ]; then
    echo "logs exists."
else 
    mkdir -p /srv/gitlab-ce/logs
fi

if [ -d "/srv/gitlab-ce/data" ]; then
    echo "data exists."
else 
    mkdir -p /srv/gitlab-ce/data
fi