GPR Imaging Challenge
***********************

The Rationale
=============

The `9th International Workshop on Advanced Ground Penetrating Radar (IWAGPR 2017) <http://www.iwagpr2017.org>`_ is being hosted by `the School of Engineering <http://www.eng.ed.ac.uk>`_ at `the University of Edinburgh <http://www.ed.ac.uk>`_ - the home of the GPR simulation software `gprMax <http://www.gprmax.com>`_. We have therefore decided to design what we believe to be a realistic 3D GPR model which we think offers a challenge for testing GPR processing, imaging, and inversion algorithms.

The idea of using a numerical model to test imaging, inversion, and processing algorithms is not new. It is well established in seismic modelling with, for example, the `Marmousi model <http://dx.doi.org/10.1190/1.1437051>`_. However, to our knowledge, no such detailed and realistic 3D model exists for GPR. The use of a realistic model for testing GPR algorithms can offer several advantages:

* algorithms can be tested in a much more robust manner than when using simplistic and clinical models that do not effectively represent the real complex environments and targets that are encountered with GPR;
* there is accurate knowledge of the composition of the targets, their precise location, and the exact makeup of the hosting media. Such detailed knowledge is not possible with experimental or field testing.

Before releasing information on the detailed construction and composition of this model (to be used by the GPR research community) we would like to offer the modelled data as an imaging and interpretation challenge to GPR researchers. We have scheduled a session in the IWAGPR2017 conference programme, in which we hope some results can be presented.

The challenge
=============

The model is a three-dimensional, near-surface example of a fictional but realistic landmine detection environment. There are several targets in the surveyed area that need to be:

* detected
* precisely located
* identified

The processes employed to achieve the above objectives and to provide a detailed GPR interpretation, are entirely up to the GPR researcher or research group taking part in the challenge. For example, an inversion process may be attempted, or some simple processing accompanied by expert interpretation. Additionally, the number of A-scans or B-scans used to image and interpret the data is also completely up to the researchers taking part.

Full details of the modelled data are provided in the briefing document. Information and data are available as if a real survey had been undertaken instead. The data is available in HDF5 format, which is the standard output from gprMax. Python tools that are part of the gprMax package can be used to load and plot the data. We have also included a script to allow the data to be easily imported into MATLAB if desired.

We look forward to people taking up this challenge and submitting their interpretations to be presented at IWAGPR 2017. As with all challenges there will be a prize for the best answer judged by a panel of GPR experts.
