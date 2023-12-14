============= i-09950f295bc8e0dcb ==============
----------------------------------------
/var/log/eb-engine.log
----------------------------------------
2023/12/14 22:04:14.050371 [INFO] Running command /bin/sh -c systemctl start cfn-hup.service
2023/12/14 22:04:14.128893 [INFO] Instance has NOT been bootstrapped
2023/12/14 22:04:14.128914 [INFO] Executing instruction: SetupPublishLogCronjob
2023/12/14 22:04:14.128918 [INFO] Setup publish logs cron job...
2023/12/14 22:04:14.128922 [INFO] Copying file /opt/elasticbeanstalk/config/private/logtasks/cron/publishlogs to /etc/cron.d/publishlogs
2023/12/14 22:04:14.131503 [INFO] Instance has NOT been bootstrapped
2023/12/14 22:04:14.131515 [INFO] Executing instruction: MarkBootstrapped
2023/12/14 22:04:14.131518 [INFO] Starting MarkBootstrapped
2023/12/14 22:04:14.131524 [INFO] Instance has NOT been bootstrapped
2023/12/14 22:04:14.131596 [INFO] Marked instance as Bootstrapped
2023/12/14 22:04:14.131600 [INFO] Executing instruction: Save CFN Stack Info
2023/12/14 22:04:14.131646 [INFO] Starting SwitchCFNStack
2023/12/14 22:04:14.131651 [INFO] Executing cleanup logic
2023/12/14 22:04:14.131659 [INFO] Platform Engine finished execution on command: env-launch

2023/12/14 22:04:37.755684 [INFO] Starting...
2023/12/14 22:04:37.756131 [INFO] Starting EBPlatform-PlatformEngine
2023/12/14 22:04:37.756228 [INFO] reading event message file
2023/12/14 22:04:37.756402 [INFO] Engine received EB command cfn-hup-exec

2023/12/14 22:04:37.826875 [INFO] Running command /bin/sh -c /opt/aws/bin/cfn-get-metadata -s arn:aws:cloudformation:us-west-2:671946291905:stack/awseb-e-zp93pjjifc-stack/6d41a000-9acb-11ee-8a47-0a5975a7f207 -r AWSEBAutoScalingGroup --region us-west-2
2023/12/14 22:04:38.251862 [INFO] Running command /bin/sh -c /opt/aws/bin/cfn-get-metadata -s arn:aws:cloudformation:us-west-2:671946291905:stack/awseb-e-zp93pjjifc-stack/6d41a000-9acb-11ee-8a47-0a5975a7f207 -r AWSEBBeanstalkMetadata --region us-west-2
2023/12/14 22:04:38.637033 [INFO] checking whether command app-deploy is applicable to this instance...
2023/12/14 22:04:38.637043 [INFO] this command is applicable to the instance, thus instance should execute command
2023/12/14 22:04:38.637046 [INFO] Engine command: (app-deploy)

2023/12/14 22:04:38.637050 [INFO] Downloading EB Application...
2023/12/14 22:04:38.637052 [INFO] Region: us-west-2
2023/12/14 22:04:38.637058 [INFO] envID: e-zp93pjjifc
2023/12/14 22:04:38.637060 [INFO] envBucket: elasticbeanstalk-us-west-2-671946291905
2023/12/14 22:04:38.637062 [INFO] Using manifest file name from command request
2023/12/14 22:04:38.637067 [INFO] Unable to get version manifest file.
2023/12/14 22:04:38.637069 [INFO] Downloading latest manifest available.
2023/12/14 22:04:38.637071 [INFO] Download latest app version manifest
2023/12/14 22:04:38.637168 [INFO] resources/environments/e-zp93pjjifc/_runtime/versions/manifest
2023/12/14 22:04:38.685188 [INFO] latestManifest key *: resources/environments/e-zp93pjjifc/_runtime/versions/manifest_1702590899240

2023/12/14 22:04:38.685469 [INFO] Downloading: bucket: elasticbeanstalk-us-west-2-671946291905, object: /resources/environments/e-zp93pjjifc/_runtime/versions/manifest_1702590899240
2023/12/14 22:04:38.698707 [INFO] Download successful152bytes downloaded
2023/12/14 22:04:38.698811 [INFO] Trying to read and parse version manifest...
2023/12/14 22:04:38.698903 [INFO] Downloading: bucket: elasticbeanstalk-us-west-2-671946291905, object: /resources/environments/e-zp93pjjifc/_runtime/_versions/KAI-KAI/app-a56e6-231214_215452204426
2023/12/14 22:04:38.741702 [INFO] Download successful66168bytes downloaded
2023/12/14 22:04:38.742883 [INFO] Executing instruction: ElectLeader
2023/12/14 22:04:38.742892 [INFO] Running leader election for instance i-09950f295bc8e0dcb...
2023/12/14 22:04:38.742895 [INFO] Calling the cfn-elect-cmd-leader to elect the command leader.
2023/12/14 22:04:38.742916 [INFO] Running command /bin/sh -c /opt/aws/bin/cfn-elect-cmd-leader --stack arn:aws:cloudformation:us-west-2:671946291905:stack/awseb-e-zp93pjjifc-stack/6d41a000-9acb-11ee-8a47-0a5975a7f207 --command-name ElasticBeanstalkCommand-AWSEBAutoScalingGroup --invocation-id 7fd842fe-345a-4aa9-ad00-fa68956ee5eb --listener-id i-09950f295bc8e0dcb --region us-west-2
2023/12/14 22:04:39.138523 [INFO] Instance is Leader.
2023/12/14 22:04:39.138578 [INFO] Executing instruction: stopSqsd
2023/12/14 22:04:39.138585 [INFO] This is a web server environment instance, skip stop sqsd daemon ...
2023/12/14 22:04:39.138589 [INFO] Executing instruction: PreBuildEbExtension
2023/12/14 22:04:39.138591 [INFO] Starting executing the config set Infra-EmbeddedPreBuild.
2023/12/14 22:04:39.138603 [INFO] Running command /bin/sh -c /opt/aws/bin/cfn-init -s arn:aws:cloudformation:us-west-2:671946291905:stack/awseb-e-zp93pjjifc-stack/6d41a000-9acb-11ee-8a47-0a5975a7f207 -r AWSEBAutoScalingGroup --region us-west-2 --configsets Infra-EmbeddedPreBuild
2023/12/14 22:06:04.415968 [INFO] Finished executing the config set Infra-EmbeddedPreBuild.

2023/12/14 22:06:04.416019 [INFO] Executing instruction: StageApplication
2023/12/14 22:06:04.416186 [INFO] extracting /opt/elasticbeanstalk/deployment/app_source_bundle to /var/app/staging/
2023/12/14 22:06:04.416201 [INFO] Running command /bin/sh -c /usr/bin/unzip -q -o /opt/elasticbeanstalk/deployment/app_source_bundle -d /var/app/staging/
2023/12/14 22:06:04.429511 [INFO] finished extracting /opt/elasticbeanstalk/deployment/app_source_bundle to /var/app/staging/ successfully
2023/12/14 22:06:04.435463 [INFO] Executing instruction: RunAppDeployPreBuildHooks
2023/12/14 22:06:04.435536 [INFO] Executing platform hooks in .platform/hooks/prebuild/
2023/12/14 22:06:04.435565 [INFO] The dir .platform/hooks/prebuild/ does not exist
2023/12/14 22:06:04.435567 [INFO] Finished running scripts in /var/app/staging/.platform/hooks/prebuild
2023/12/14 22:06:04.435572 [INFO] Executing instruction: stage ruby application
2023/12/14 22:06:04.435601 [INFO] stage ruby application ....
2023/12/14 22:06:04.435643 [INFO] Running command /bin/sh -c ruby -v | cut -d ' ' -f 2
2023/12/14 22:06:04.493897 [INFO] 3.2.2

2023/12/14 22:06:04.493927 [INFO] Running command /bin/sh -c bundle --version
2023/12/14 22:06:04.833951 [INFO] Bundler version 2.4.10

2023/12/14 22:06:04.833979 [INFO] Running command /bin/sh -c bundle config set --local deployment true
2023/12/14 22:06:05.014089 [INFO] Running command /bin/sh -c bundle _2.4.10_ install
2023/12/14 22:06:05.484407 [INFO] Don't run Bundler as root. Installing your bundle as root will break this
application for all non-root users on this machine.
Your Ruby version is 3.2.2, but your Gemfile specified 3.0.6

2023/12/14 22:06:05.484451 [ERROR] An error occurred during execution of command [app-deploy] - [stage ruby application]. Stop running the command. Error: install dependencies in Gemfile failed with error Command /bin/sh -c bundle _2.4.10_ install failed with error exit status 18. Stderr:Don't run Bundler as root. Installing your bundle as root will break this
application for all non-root users on this machine.
Your Ruby version is 3.2.2, but your Gemfile specified 3.0.6
 

2023/12/14 22:06:05.484456 [INFO] Executing cleanup logic
2023/12/14 22:06:05.484537 [INFO] CommandService Response: {"status":"FAILURE","api_version":"1.0","results":[{"status":"FAILURE","msg":"Engine execution has encountered an error.","returncode":1,"events":[{"msg":"Instance deployment failed to install dependency gems that you defined in 'Gemfile'. For details, see 'eb-engine.log'. The deployment failed.","timestamp":1702591565484,"severity":"ERROR"},{"msg":"Instance deployment failed. For details, see 'eb-engine.log'.","timestamp":1702591565484,"severity":"ERROR"}]}]}

2023/12/14 22:06:05.484677 [INFO] Platform Engine finished execution on command: app-deploy

2023/12/14 22:36:01.344332 [INFO] Starting...
2023/12/14 22:36:01.344390 [INFO] Starting EBPlatform-PlatformEngine
2023/12/14 22:36:01.344423 [INFO] reading event message file
2023/12/14 22:36:01.344614 [INFO] Engine received EB command cfn-hup-exec

2023/12/14 22:36:01.456097 [INFO] Running command /bin/sh -c /opt/aws/bin/cfn-get-metadata -s arn:aws:cloudformation:us-west-2:671946291905:stack/awseb-e-zp93pjjifc-stack/6d41a000-9acb-11ee-8a47-0a5975a7f207 -r AWSEBAutoScalingGroup --region us-west-2
2023/12/14 22:36:02.119566 [INFO] Running command /bin/sh -c /opt/aws/bin/cfn-get-metadata -s arn:aws:cloudformation:us-west-2:671946291905:stack/awseb-e-zp93pjjifc-stack/6d41a000-9acb-11ee-8a47-0a5975a7f207 -r AWSEBBeanstalkMetadata --region us-west-2
2023/12/14 22:36:02.630681 [INFO] checking whether command tail-log is applicable to this instance...
2023/12/14 22:36:02.630693 [INFO] this command is applicable to the instance, thus instance should execute command
2023/12/14 22:36:02.630696 [INFO] Engine command: (tail-log)

2023/12/14 22:36:02.630762 [INFO] Executing instruction: GetTailLogs
2023/12/14 22:36:02.630765 [INFO] Tail Logs...
2023/12/14 22:36:02.631448 [INFO] Running command /bin/sh -c tail -n 100 /var/log/eb-engine.log


----------------------------------------
/var/log/eb-hooks.log
----------------------------------------


