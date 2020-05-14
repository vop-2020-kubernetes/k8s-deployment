git clone https://github.com/amurant/simplelb.git

kubectl label node node1.cluster0.ilabt-imec-be.wall2.ilabt.iminds.be simplelb.amurant.io/enablelb=true
kubectl label node node2.cluster0.ilabt-imec-be.wall2.ilabt.iminds.be simplelb.amurant.io/enablelb=true
kubectl label node node3.cluster0.ilabt-imec-be.wall2.ilabt.iminds.be simplelb.amurant.io/enablelb=true

kubectl create -f simplelb/deploy

