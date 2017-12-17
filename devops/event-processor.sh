java -Xmx256m -XX:NewSize=128m -XX:MaxNewSize=128m -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode -Dconsumer.processing-time-millis=$1 -Dakka.remote.netty.tcp.hostname=$2 -Dakka.remote.netty.tcp.port=$3  -Dakka.cluster.seed-nodes.0=akka.tcp://ClusterSystem@$4 -Dconfig.resource=/$5 -Djava.library.path=devops/sigar -cp target/scala-2.12/api.scaling.akka-assembly-1.0.jar com.api.scaling.processor.EventProcessorNode