CONDA_NAME := mxnet-in-keras

install: conda-create install-pip install-dmlc-keras

conda-create: conda-delete
	conda create -y -n $(CONDA_NAME) python=3.5
	echo "create new anaconda environment: $(CONDA_NAME)"

conda-delete:
	conda env remove -y -n $(CONDA_NAME)

install-pip:
	source activate $(CONDA_NAME) \
		&& pip install -r requirements.txt

install-dmlc-keras:
	rm -fr ./dmlc-keras/
	source activate $(CONDA_NAME) \
		&& git clone --recursive https://github.com/dmlc/keras ./dmlc-keras/ \
		&& cd ./dmlc-keras/ \
		&& python setup.py install
