# ICSE2024-BCDSE

## Getting Started 
We have packaged all the environment and configuration related to the experiment into a docker image and uploaded it to the *dockerHub*. The only thing you need to do is pull it to your local machine.
```
$ docker pull bcdse/popl_2024:v1
$ docker run --rm -ti --ulimit='stack=-1:-1' bcdse/popl_2024:v1
```

## Experiment replay
We designed four experiments to verify the effectiveness of BCGSE. For the experiment of reproduction, you can go to the ```/paper``` directory, and experimental-related tools, as well as benchmark are available under the fold.

### To run the whole experiment
```
$ cd /paper/benchmark/
$ python3 set.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

### To run the **Validity** experiment
```
$ cd /paper/benchmark/validity
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

### To run the **SIR** experiment
```
$ cd /paper/benchmark/efficacy
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

### To run the **Coreutils** experiment
```
$ cd /paper/benchmark/efficiency
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

### To run the **CVE** experiment
```
$ cd /paper/benchmark/repetition
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.
