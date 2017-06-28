### BuildImage

This program is for building docker images.
You need give name of image as argument.
You can also add various parameters for extension:
    -v          -- show build output for current image
    -vv         -- show build output for all building image (script automaticaly build also our baseimage if exists)
    -t [tag]    -- create tag after build
    -p          -- after build push to teamzeus dockerHub



    Example:
        ./BuildImage -p -v -t 3.4 python        ## creates python image with tag 3.4 and push to dockerHub



### dockerManager

You can run commands:

        start [image]            -- create or start container and connect to bash
        stop [image]             -- stop container
        kill [image]             -- stop and remove container
        restart [image]          -- restart container
        logs [image]             -- show logs of container
        rm [image]               -- rm exists container
        build [image]            -- run BuildImage script
        image prune              -- clean system from old images
        system prune             -- clean system
        tag [image] [tag]        -- create tag
        push [image] {tag}       -- push image to dockerhub
        init                     -- initialize autocomplete


        Examples:
        ./dockerManager start python
        ./dockerManager kill python
        ./dockerManager tag python 3.4
        ./dockerManager push python 3.4

