
### 1. H2
#### Calculation of bond length and dissociation energy
1.  pw.x 'relax' 
2. pw.x 'scf' 


### 2. H2O
#### Calculation of bond length and bond angle
1. pw.x 'relax' 


### 3-1. Si_vc_relax
#### calculation of crystal constant and density
1. vc relax 


### 3-2. Si_bandgap
#### calculation of band gap by using DOS calcualtion
1. pw.x 'scf' 
2. pw.x 'nscf' : to get more precise Fermi energy
3. dos.x 


### 3-3. Si_bandstructure
#### Calculation of band gap by using k-path
1. pw.x 'scf'
2. pw.x 'nscf'
3. pw.x 'bands'
4. bands.x
5. plotband.


### 3-4. Si_phonon
#### Gamma point
1. pw.x 'scf'
2. ph.x

#### DOS
1. pw.x 'scf' : scf calculation
2. ph.x  : calculation of dynamical matrices on q-vector in reciprocal space
3. q2r.x : calculation of interatomic force constants in real space (Fourier transform of the output from ph.x)
4. matdyn.x : calculation of phonon frequency at any given list of q-vectors (get DOS of dispersion)


### 3-5. Si_reconstruction
#### Si(100) surface reconstruction structure
1. pw.x 'relax' 


### 4. NH3
#### Calculation of NH3 inversion energy
1. pw.x 'relax'
2. neb.x


### 5. Al
#### DOS
1. pw.x 'vc relax'
2. pw.x 'scf'
3. pw.x 'nscf'
4. dos.x

#### PDOS 
1. pw.x 'scf'
2. pw.x 'nscf'
3. pjofwfc.x : projects wavefunctions onto orthogonalized atomic wavefunctions, calculates Lowdin charges, spilling parameter, projected DOS
4. sumpdos.x : Integrating PDOS you will get number of electrons for that particular state.


### 6. Fe
#### Collinear : Calculation of spin-polarized magnetization in iron crystal
1. pw.x 'vc relax'
2. pw.x 'scf'
3. pw.x 'nscf'
4. dos.x

#### Noncollinear : Calculation of non-polarized magnetization in iron crystal
1. pw.x 'scf' (noncolin = .true.)


### 7. Benzene
#### Calculation of adsorption spectrum of benzene molecule
1. pw.x 'relax'
2. pw.x 'scf'
3. turbo_lanczos.x
4. turbo_spectrum.x


### 8. NMR_gipaw
#### TMS reference : Chemical shift using GIPAW
1. pw.x 'scf'
2. gipaw.x

#### Benzene : Target molecule
1. pw.x 'scf'
2. gipaw.x


### 9. Graphene
#### Calculation of graphene band gap
1. pw.x 'vc relax'
2. pw.x 'scf'
3. pw.x 'nscf'
4. pw.x 'bands'
5. bands.x
6. plotband.x


### 10. DFT+U NiO
#### no U : Standard DFT calulation
1. pw.x 'scf'
2. pw.x 'nscf'
3. dos.x

#### add U : Using DFT+U method
1. pw.x 'scf' (lda_plus_u = .true.)
2. pw.x 'nscf' (lda_plus_u = .true.)
3. dos.x

