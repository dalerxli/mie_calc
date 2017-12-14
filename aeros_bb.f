      BLOCK DATA  A_DATABASE
      INCLUDE  'AEROS_DB.PARS'
      INCLUDE  'AEROS_DB.VARS'
C     ---------------------------------------
C     Relative Humidity Levels
      DATA ( RH (i), i=1, n_rh )
     &  /0,  70,  80,  90,  95,  98,  99/
C     ---------------------------------------
C     Standard Deviation
      DATA ( SIGMA (i), i=1, n_logn_comp )
     &  / 0.400,  0.476, 0.350, 0.476,
     &    0.301,  0.400, 0.307, 0.307,
     &    0.307,  0.328, 0.505, 0.277,
     &    0.217,  0.426, 0.380, 0.307,
     &    0.2695, 0.248, 0.342, 0.204,
     &    0.350,  0.400, 0.350, 0.400,
     &    0.400,  0.260  /
C     ----------------------------------------
C     Mode Radii
C
C  1            Dust-Like 1
      DATA (HUM_RADII ( i, 1 ), i=1, n_rh )
     &  / 0.4710, 0.4710, 0.4710, 0.4710,
     &    0.4710, 0.4710, 0.4710 /
C
C  2            Dust-Like 2
      DATA (HUM_RADII ( i, 2 ), i=1, n_rh )
     &  / 0.50, 99., 99., 99., 99., 99., 99. /
C
C  3            Water-Soluble 1
      DATA (HUM_RADII ( i, 3 ), i=1, n_rh )
     &  / 0.0285, 0.0314, 0.0411, 0.0483,
     &    0.0560, 0.0780, 0.0890 /
C
C  4            Water-Soluble 2
      DATA (HUM_RADII ( i, 4 ), i=1, n_rh )
     &   / 0.005, 99., 99., 99., 99., 99., 99. /
C
C  5            Soot
      DATA (HUM_RADII ( i, 5 ), i=1, n_rh )
     &   /0.0118, 0.0122, 0.0140, 0.0166,
     &    0.0183, 0.0203, 0.0223 /
C
C  6            Oceanic
      DATA (HUM_RADII ( i, 6 ), i=1, n_rh )
     &   / 0.3, 99., 99., 99., 99., 99., 99. /
C
C  7            Sea-Salt (Nuc)
      DATA (HUM_RADII ( i, 7 ), i=1, n_rh )
     &   / 0.055, 0.098, 0.107, 0.1148,
     &     0.151, 0.193, 0.231 /
C
C  8            Sea-Salt (Acc)
      DATA (HUM_RADII ( i, 8 ), i=1, n_rh )
     &   /  0.400, 0.716, 0.786, 0.938,
     &      1.145, 1.523, 1.906 /
C
C  9            Sea-Salt (Coa)
      DATA (HUM_RADII ( i, 9 ), i=1, n_rh )
     &   /3.30, 5.908, 6.493, 7.756,
     &    9.476, 12.657, 15.903 /
C
C 10            Mineral Backgorund (Nuc)
      DATA (HUM_RADII ( i, 10 ), i=1, n_rh )
     &   / 0.001, 0.001, 0.001, 0.001,
     &     0.001, 0.001, 0.001 /
C
C 11            Mineral Backgorund (Acc)
      DATA (HUM_RADII ( i, 11 ), i=1, n_rh )
     &   / 0.0218, 0.0218, 0.0218, 0.0218,
     &     0.0218, 0.0218, 0.0218 /
C
C 12          Mineral Backgorund (Coa)
      DATA (HUM_RADII ( i, 12 ), i=1, n_rh )
     &    / 6.24,  6.24,  6.24,  6.24,
     &      6.24,  6.24,  6.24 /
C
C 13          Mineral Wind-Carry (Nuc)
      DATA (HUM_RADII ( i, 13 ), i=1, n_rh )
     &    / 0.05, 0.05, 0.05, 0.05,
     &      0.05, 0.05, 0.05 /
C
C 14         Mineral Wind-Carry (Acc)
      DATA (HUM_RADII ( i, 14 ), i=1, n_rh )
     &    / 0.27, 0.27, 0.27, 0.27,
     &      0.27, 0.27, 0.27 /
C
C 15        Mineral Wind-Carry (Coa)
      DATA (HUM_RADII ( i, 15 ), i=1, n_rh )
     &    / 4.00, 4.00, 4.00, 4.00,
     &      4.00, 4.00, 4.00 /
C
C 16          Sulfate
      DATA (HUM_RADII ( i, 16 ), i=1, n_rh )
     &    / 0.0695, 0.109, 0.118, 0.135,
     &      0.158, 0.195, 0.231 /
C
C 17         H2SO4
      DATA (HUM_RADII ( i, 17 ), i=1, n_rh )
     &     / 0.0695, 0.0695, 0.0695, 0.0695,
     &       0.0695, 0.0695,0.0695  /
C
C 18         Vocanic Ash 1
      DATA (HUM_RADII ( i, 18 ), i=1, n_rh )
     &     / 0.217, 0.217, 0.217, 0.217,
     &       0.217, 0.217, 0.217 /
C
C 19         Mineral Long-Range Transport
      DATA (HUM_RADII ( i, 19 ), i=1, n_rh )
     &     / 0.5, 0.5, 0.5, 0.5,
     &       0.5, 0.5, 0.5 /
C
C 20         Mineral Poleward
      DATA (HUM_RADII ( i, 20 ), i=1, n_rh )
     &     / 0.4, 0.4, 0.4, 0.4,
     &       0.4, 0.4, 0.4 /
C
C 21         Small Rural
      DATA (HUM_RADII ( i, 21 ), i=1, n_rh )
     &     / 0.027, 0.02846, 0.03274, 0.03884,
     &       0.04238, 0.04751, 0.05215 /
C
C 22         Large Rural
      DATA (HUM_RADII ( i, 22 ), i=1, n_rh )
     &     / 0.43, 0.4571, 0.5477, 0.6462,
     &       0.7078, 0.9728, 1.1755 /
C
C 23         Small Urban
      DATA (HUM_RADII ( i, 23 ), i=1, n_rh )
     &     / 0.025, 0.02911 ,0.03514 , 0.04187,
     &       0.04904, 0.05996, 0.06847 /
C
C 24         Large Urban
      DATA (HUM_RADII ( i, 24 ), i=1, n_rh )
     &     / 0.400, 0.4777, 0.5805, 0.7061,
     &       0.8634, 1.1691, 1.4858 /
C
C 25         Oceanic
      DATA (HUM_RADII ( i, 25 ), i=1, n_rh )
     &     / 0.160, 0.2041, 0.3180, 0.3803,
     &       0.4606, 0.6024, 0.7505 /
C
C 26         Biomass Burning (Accumulation)
      DATA (HUM_RADII ( i, 26 ), i=1, n_rh )
     &     / 0.13, 0.13, 0.13, 0.13,
     &       0.13, 0.13, 0.13 /
C     ---------------------------------------
C          Modified Gamma Distribution
C
C 27         H2SO4
      DATA ( GAMMA_MOD ( i, 1 ), i=1, n_gam_par )
     &     / 324.0, 1.0, 18.0, 1.0  /
C 28         Volcanic Ash  2
      DATA ( GAMMA_MOD ( i, 2 ), i=1, n_gam_par )
     &     / 5461.33, 1.0, 16.0, 0.5 /

c wdn****
C 29         Advection Fog 1
      DATA ( GAMMA_MOD ( i, 3 ), i=1, n_gam_par )
     &     / 0.0270, 3.0, 0.3, 1.0 /

C 30         Advection Fog 2
      DATA ( GAMMA_MOD ( i, 4 ), i=1, n_gam_par )
     &     / 0.06592, 3.0, 0.375, 1.0 /

C 31         Radiation Fog 3
      DATA ( GAMMA_MOD ( i, 5 ), i=1, n_gam_par )
     &     / 2.37305, 6.0, 1.5, 1.0 /

C 32         Radiation Fog 4
      DATA ( GAMMA_MOD ( i, 6 ), i=1, n_gam_par )
     &     / 607.5, 6.0, 3.0, 1.0 /
c *******
C
C     ----------------------------------------
C           Wavelengths
      DATA ( WLR ( i ), i=1, n_wlr )
     &     /0.3000,  0.3371,  0.4000,  0.4880,  0.5145,
     &      0.5500,  0.6328,  0.6943,  0.8600,  1.0600,
     &      1.3000,  1.5360,  1.8000,  2.0000,  2.2500,
     &      2.5000,  2.7000,  3.0000,  3.2000,  3.3923,
     &      3.5000,  3.7500,  4.0000,  4.5000,  5.0000,
     &      5.5000,  6.0000,  6.2000,  6.5000,  7.2000,
     &      7.9000,  8.2000,  8.5000,  8.7000,  9.0000,
     &      9.2000,  9.5000,  9.8000, 10.0000, 10.5910,
     &     11.0000, 11.5000, 12.5000, 13.0000, 14.0000,
     &     14.8000, 15.0000, 16.4000, 17.2000, 18.0000,
     &     18.5000, 20.0000, 21.3000, 22.5000, 25.0000,
     &     27.9000, 30.0000, 35.0000, 40.0000  /
C
C     ----------------------------------------
C          Refractive indices
C
C     -1-        Dust-Like
      DATA ( REFIND ( i, 1, 1 ), i=1, n_wlr )
     &  / 1.530, 1.530, 1.530, 1.530, 1.530, 1.530,
     &    1.530, 1.530, 1.520, 1.520, 1.460, 1.400,
     &    1.330, 1.260, 1.220, 1.180, 1.180, 1.160,
     &    1.220, 1.260, 1.280, 1.270, 1.260, 1.260,
     &    1.250, 1.220, 1.150, 1.140, 1.130, 1.400,
     &    1.150, 1.130, 1.300, 1.400, 1.700, 1.720,
     &    1.730, 1.740, 1.750, 1.620, 1.620, 1.590,
     &    1.510, 1.470, 1.520, 1.570, 1.570, 1.600,
     &    1.630, 1.640, 1.640, 1.680, 1.770, 1.900,
     &    1.970, 1.890, 1.800, 1.900, 2.100  /
      DATA ( REFIND ( i, 1, 2 ), i=1, n_wlr )
     &  / 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3,
     &    8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3,
     &    8.00E-3, 8.00E-3, 9.00E-3, 9.00E-3, 1.30E-2, 1.20E-2,
     &    1.00E-2, 1.30E-2, 1.10E-2, 1.10E-2, 1.20E-2, 1.40E-2,
     &    1.60E-2, 2.10E-2, 3.70E-2, 3.90E-2, 4.20E-2, 5.50E-2,
     &    4.00E-2, 7.40E-2, 9.00E-2,   0.100,   0.140,   0.150,
     &      0.162,   0.162,   0.162,   0.120,   0.105,   0.100,
     &    9.00E-2,   0.100, 8.50E-2,   0.100,   0.100,   0.100,
     &      0.100,   0.115,   0.120,   0.220,   0.280,   0.280,
     &      0.240,   0.320,   0.420,   0.500,   0.600   /
C
C     -2-       Water-Soluble
      DATA ( REFIND ( i, 2, 1 ), i=1, n_wlr )
     &   / 1.530, 1.530, 1.530, 1.530, 1.530, 1.530,
     &     1.530, 1.530, 1.520, 1.520, 1.510, 1.510,
     &     1.460, 1.420, 1.420, 1.420, 1.400, 1.420,
     &     1.430, 1.430, 1.450, 1.452, 1.455, 1.460,
     &     1.450, 1.440, 1.410, 1.430, 1.460, 1.400,
     &     1.200, 1.010, 1.300, 2.400, 2.560, 2.200,
     &     1.950, 1.870, 1.820, 1.760, 1.720, 1.670,
     &     1.620, 1.620, 1.560, 1.440, 1.420, 1.750,
     &     2.080, 1.980, 1.850, 2.120, 2.060, 2.000,
     &     1.880, 1.840, 1.820, 1.920, 1.860  /
      DATA ( REFIND ( i, 2, 2 ), i=1, n_wlr )
     &   / 8.00E-3, 5.00E-3, 5.00E-3, 5.00E-3, 5.00E-3, 6.00E-3,
     &     6.00E-3, 7.00E-3, 1.20E-2, 1.70E-2, 2.00E-2, 2.30E-2,
     &     1.70E-2, 8.00E-3, 1.00E-2, 1.20E-2, 5.50E-2, 2.20E-2,
     &     8.00E-3, 7.00E-3, 5.00E-3, 4.00E-3, 5.00E-3, 1.30E-2,
     &     1.20E-2, 1.80E-2, 2.30E-2, 2.70E-2, 3.30E-2, 7.00E-2,
     &     6.50E-2,   0.100,   0.215,   0.290,   0.370,   0.420,
     &       0.160, 9.50E-2, 9.00E-2, 7.00E-2, 5.00E-2, 4.70E-2,
     &     5.30E-2, 5.50E-2, 7.30E-2,   0.100,   0.200,   0.160,
     &       0.240,   0.180,   0.170,   0.220,   0.230,   0.240,
     &       0.280,   0.290,   0.300,   0.400,   0.500  /
C
C     -3-           Soot
      DATA ( REFIND ( i, 3, 1 ), i=1, n_wlr )
     &   / 1.740, 1.750, 1.750, 1.750, 1.750, 1.750,
     &     1.750, 1.750, 1.750, 1.750, 1.760, 1.770,
     &     1.790, 1.800, 1.810, 1.820, 1.830, 1.840,
     &     1.860, 1.870, 1.880, 1.900, 1.920, 1.940,
     &     1.970, 1.990, 2.020, 2.030, 2.040, 2.060,
     &     2.120, 2.130, 2.150, 2.160, 2.170, 2.180,
     &     2.190, 2.200, 2.210, 2.220, 2.230, 2.240,
     &     2.270, 2.280, 2.310, 2.330, 2.330, 2.360,
     &     2.380, 2.400, 2.410, 2.450, 2.460, 2.480,
     &     2.510, 2.540, 2.570, 2.630, 2.690  /
      DATA ( REFIND ( i, 3, 2 ), i=1, n_wlr )
     &   / 0.470, 0.470, 0.460, 0.450, 0.450, 0.440,
     &     0.430, 0.430, 0.430, 0.440, 0.450, 0.460,
     &     0.480, 0.490, 0.500, 0.510, 0.520, 0.540,
     &     0.540, 0.550, 0.560, 0.570, 0.580, 0.590,
     &     0.600, 0.610, 0.620, 0.625, 0.630, 0.650, 
     &     0.670, 0.680, 0.690, 0.690, 0.700, 0.700, 
     &     0.710, 0.715, 0.720, 0.730, 0.730, 0.740, 
     &     0.750, 0.760, 0.775, 0.790, 0.790, 0.810, 
     &     0.820, 0.825, 0.830, 0.850, 0.860, 0.870, 
     &     0.890, 0.910, 0.930, 0.970, 1.000  /
C
C     -4-         Oceanic
      DATA ( REFIND ( i, 4, 1 ), i=1, n_wlr )
     &   / 1.395, 1.392, 1.385, 1.382, 1.381, 1.381, 
     &     1.377, 1.376, 1.372, 1.367, 1.365, 1.359, 
     &     1.351, 1.347, 1.334, 1.309, 1.249, 1.439, 
     &     1.481, 1.439, 1.423, 1.398, 1.388, 1.377, 
     &     1.366, 1.333, 1.306, 1.431, 1.374, 1.343,
     &     1.324, 1.324, 1.336, 1.366, 1.373, 1.356, 
     &     1.339, 1.324, 1.310, 1.271, 1.246, 1.227, 
     &     1.208, 1.221, 1.267, 1.307, 1.321, 1.407, 
     &     1.487, 1.525, 1.536, 1.560, 1.568, 1.579, 
     &     1.596, 1.612, 1.614, 1.597, 1.582  /
      DATA ( REFIND ( i, 4, 2 ), i=1, n_wlr )
     &   / 5.83E-7, 1.20E-7, 9.90E-9, 6.41E-9, 3.70E-9, 4.26E-9, 
     &     1.62E-8, 5.04E-8, 1.09E-6, 6.01E-5, 1.41E-4, 2.43E-4, 
     &     3.11E-4, 1.07E-3, 8.50E-4, 2.39E-3, 1.56E-2,   0.197, 
     &     6.69E-2, 1.51E-2, 7.17E-3, 2.90E-3, 3.69E-3, 9.97E-3, 
     &     9.57E-3, 9.31E-3, 7.96E-2, 6.91E-2, 2.94E-2, 2.49E-2,
     &     2.79E-2, 3.08E-2, 3.36E-2, 3.56E-2, 3.65E-2, 3.71E-2, 
     &     3.68E-2, 3.88E-2, 4.06E-2, 5.22E-2, 7.31E-2,   0.105,
     &       0.190,   0.223,   0.271,   0.292,   0.297,   0.331,
     &       0.341,   0.341,   0.339,   0.324,   0.318,   0.316, 
     &       0.313,   0.320,   0.320,   0.383,   0.561    / 
C
C     -5-         H2SO4
      DATA ( REFIND ( i, 5, 1 ), i=1, n_wlr )
     &   / 1.469, 1.459, 1.440, 1.432, 1.431, 1.430, 
     &     1.429, 1.428, 1.425, 1.420, 1.410, 1.403,
     &     1.390, 1.384, 1.370, 1.344, 1.303, 1.293,
     &     1.311, 1.352, 1.376, 1.396, 1.398, 1.385,
     &     1.360, 1.337, 1.425, 1.424, 1.370, 1.210,
     &     1.140, 1.200, 1.370, 1.530, 1.650, 1.600,
     &     1.670, 1.910, 1.890, 1.720, 1.670, 1.890,
     &     1.740, 1.690, 1.640, 1.610, 1.590, 1.520,
     &     1.724, 1.950, 1.927, 1.823, 1.780, 1.870,
     &     1.930, 1.920, 1.920, 1.900, 1.890  /
      DATA ( REFIND ( i, 5, 2 ), i=1, n_wlr )
     &   / 1.00E-8, 1.00E-8, 1.00E-8, 1.00E-8, 1.00E-8, 1.00E-8,
     &     1.47E-8, 1.99E-8, 1.79E-7, 1.50E-6, 1.00E-5, 1.37E-4,
     &     5.50E-4, 1.26E-3, 1.80E-3, 3.76E-3, 5.70E-3, 9.55E-2,
     &       0.135,   0.159,   0.158,   0.131,   0.126,   0.120,
     &       0.121,   0.183,   0.195,   0.165,   0.128,   0.176, 
     &       0.488,   0.645,   0.755,   0.772,   0.633,   0.586, 
     &       0.750,   0.680,   0.455,   0.340,   0.485,   0.374, 
     &       0.198,   0.195,   0.195,   0.205,   0.211,   0.414, 
     &       0.590,   0.410,   0.302,   0.235,   0.292,   0.315, 
     &       0.200,   0.180,   0.180,   0.190,   0.220    /
C
C     -6-         Volcanic Ash
      DATA ( REFIND ( i, 6, 1 ), i=1, n_wlr )
     &   / 1.500, 1.500, 1.500, 1.500, 1.500, 1.500, 
     &     1.500, 1.500, 1.500, 1.500, 1.500, 1.490,
     &     1.480, 1.460, 1.460, 1.460, 1.460, 1.480, 
     &     1.480, 1.490, 1.490, 1.500, 1.500, 1.520,
     &     1.510, 1.510, 1.480, 1.460, 1.450, 1.440,
     &     1.380, 1.340, 1.620, 1.950, 2.200, 2.230, 
     &     2.250, 2.280, 2.300, 2.200, 2.150, 2.050,
     &     1.800, 1.760, 1.700, 1.650, 1.650, 1.750, 
     &     1.850, 2.000, 2.100, 2.250, 2.400, 2.500, 
     &     2.600, 2.500, 2.400, 2.300, 2.250  /
      DATA ( REFIND ( i, 6, 2 ), i=1, n_wlr )
     &   / 1.00E-2, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 
     &     8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3, 8.00E-3,
     &     8.00E-3, 8.00E-3, 8.00E-3, 9.00E-3, 1.00E-2, 1.30E-2,
     &     1.40E-2, 1.20E-2, 1.10E-2, 9.00E-3, 7.00E-3, 7.50E-3,
     &     9.00E-3, 1.20E-2, 1.50E-2, 1.80E-2, 2.40E-2, 4.50E-2, 
     &     7.20E-2, 9.70E-2,   0.121,   0.170,   0.215,   0.240, 
     &       0.275,   0.304,   0.320,   0.305,   0.270,   0.240,
     &       0.155,   0.148,   0.145,   0.157,   0.170,   0.200, 
     &       0.240,   0.305,   0.325,   0.318,   0.290,   0.350, 
     &       0.400,   0.430,   0.450,   0.520,   0.650    /
C
C     -7-          Mineral
      DATA ( REFIND ( i, 7, 1 ), i=1, n_wlr )
     &   / 1.530, 1.530, 1.530, 1.530, 1.530, 1.530, 
     &     1.530, 1.530, 1.530, 1.530, 1.508, 1.413,
     &     1.349, 1.267, 1.224, 1.180, 1.172, 1.160,
     &     1.220, 1.260, 1.280, 1.270, 1.260, 1.260, 
     &     1.250, 1.220, 1.220, 1.140, 1.130, 1.400, 
     &     1.150, 1.130, 1.300, 1.400, 1.400, 1.720,
     &     1.730, 1.740, 1.750, 1.300, 1.620, 1.590, 
     &     1.510, 1.470, 1.520, 1.570, 1.570, 1.600, 
     &     1.630, 1.640, 1.640, 1.680, 1.770, 1.900, 
     &     1.970, 1.890, 1.800, 1.900, 2.100  /     
      DATA ( REFIND ( i, 7, 2 ), i=1, n_wlr )
     &   / 2.50E-2, 1.91E-2, 1.30E-2, 7.97E-3, 7.13E-3, 5.50E-3,
     &     4.50E-3, 4.06E-3, 1.20E-3, 1.07E-3, 1.32E-3, 1.46E-3,
     &     1.84E-3, 2.00E-3, 2.70E-3, 3.40E-3, 6.84E-3, 1.20E-2,
     &     1.00E-2, 1.30E-2, 1.10E-2, 1.10E-2, 1.20E-2, 1.40E-2, 
     &     1.60E-2, 2.10E-2, 2.10E-2, 3.90E-2, 4.20E-2, 5.50E-2, 
     &     4.00E-2, 7.42E-2, 9.00E-2, 1.00E-1, 1.40E-1, 1.50E-1, 
     &     1.62E-1, 1.62E-1, 1.62E-1, 9.00E-2, 1.05E-1, 1.00E-1,
     &     9.00E-2, 1.00E-1, 8.50E-2, 1.00E-2, 1.00E-1, 1.00E-1, 
     &     1.00E-1, 1.15E-1, 1.20E-1, 2.20E-1, 2.80E-1, 2.80E-1, 
     &     2.44E-1, 3.20E-1, 4.20E-1, 5.00E-1, 6.00E-1  /
C
C     -8-       Urban   (Lowtran)  
      DATA ( REFIND ( i, 8, 1 ), i=1, n_wlr )
     &   / 1.572, 1.574, 1.574, 1.574, 1.574, 1.574, 
     &     1.574, 1.574, 1.566, 1.566, 1.548, 1.536,
     &     1.495, 1.458, 1.450, 1.442, 1.433, 1.442,
     &     1.466, 1.477, 1.495, 1.498, 1.501, 1.508, 
     &     1.506, 1.497, 1.470, 1.480, 1.497, 1.532,
     &     1.372, 1.263, 1.470, 2.112, 2.276, 2.081,
     &     1.945, 1.905, 1.881, 1.818, 1.798, 1.765,
     &     1.724, 1.716, 1.700, 1.649, 1.638, 1.836, 
     &     2.032, 1.982, 1.912, 2.080, 2.070, 2.072,
     &     2.028, 1.992, 1.965, 2.057, 2.084 /
      DATA ( REFIND ( i, 8, 2 ), i=1, n_wlr )
     &   /   0.100, 9.87E-2, 9.67E-2, 9.47E-2, 9.47E-2, 9.33E-2, 
     &     9.13E-2, 9.18E-2, 9.46E-2, 9.94E-2,   0.103,   0.107,
     &       0.107,   0.104,   0.108,   0.111,   0.138,   0.123, 
     &       0.115,   0.117,   0.117,   0.119,   0.122,   0.129, 
     &       0.131,   0.137,   0.146,   0.149,   0.155,   0.182, 
     &       0.180,   0.210,   0.280,   0.324,   0.381,   0.411, 
     &       0.270,   0.235,   0.233,   0.214,   0.199,   0.198, 
     &       0.201,   0.207,   0.216,   0.238,   0.294,   0.276,
     &       0.322,   0.293,   0.290,   0.346,   0.368,   0.376,
     &       0.392,   0.421,   0.455,   0.538,   0.624  /
C
C     -9-       Rural   (Lowtran)
      DATA ( REFIND ( i, 9, 1 ), i=1, n_wlr )
     &   / 1.530, 1.530, 1.530, 1.530, 1.530, 1.530, 
     &     1.530, 1.530, 1.520, 1.520, 1.495, 1.477,
     &     1.421, 1.372, 1.360, 1.348, 1.334, 1.342,
     &     1.367, 1.379, 1.399, 1.397, 1.397, 1.400,
     &     1.390, 1.374, 1.332, 1.343, 1.361, 1.400,
     &     1.185, 1.046, 1.300, 2.100, 2.302, 2.056,
     &     1.884, 1.831, 1.799, 1.718, 1.690, 1.646, 
     &     1.587, 1.575, 1.548, 1.479, 1.465, 1.705, 
     &     1.945, 1.878, 1.787, 1.988, 1.973, 1.970,
     &     1.907, 1.855, 1.814, 1.914, 1.932  /
      DATA ( REFIND ( i, 9, 2 ), i=1, n_wlr )
     &   / 8.00E-3, 5.90E-3, 5.90E-3, 5.90E-3, 5.90E-3, 6.60E-3, 
     &     6.60E-3, 7.30E-3, 1.08E-2, 1.43E-2, 1.64E-2, 1.85E-2,
     &     1.43E-2, 8.00E-3, 9.70E-3, 1.11E-2, 4.24E-2, 1.90E-2,
     &     8.60E-3, 8.80E-3, 6.80E-3, 6.10E-3, 7.10E-3, 1.33E-2,
     &     1.32E-2, 1.89E-2, 2.72E-2, 3.06E-2, 3.57E-2, 6.55E-2,
     &     5.75E-2, 9.22E-2,   0.178,   0.233,   0.301,   0.339, 
     &       0.161,   0.115,   0.112, 8.50E-2, 6.65E-2, 6.29E-2,
     &     6.41E-2, 6.85E-2, 7.66E-2,   0.100,   0.170,   0.142, 
     &       0.198,   0.161,   0.155,   0.220,   0.245,   0.252,
     &       0.268,   0.299,   0.336,   0.430,   0.530 /
C
C     -10-       Oceanic  (Lowtran)
      DATA ( REFIND ( i, 10, 1 ), i=1, n_wlr )
     &   / 1.510, 1.510, 1.500, 1.500, 1.500, 1.500, 
     &     1.490, 1.490, 1.480, 1.470, 1.470, 1.460,
     &     1.450, 1.450, 1.440, 1.430, 1.400, 1.610,
     &     1.490, 1.480, 1.480, 1.470, 1.480, 1.490,
     &     1.470, 1.420, 1.410, 1.600, 1.460, 1.420,
     &     1.400, 1.420, 1.480, 1.600, 1.650, 1.610,
     &     1.580, 1.560, 1.540, 1.500, 1.480, 1.480, 
     &     1.420, 1.410, 1.410, 1.430, 1.450, 1.560,
     &     1.740, 1.780, 1.770, 1.760, 1.760, 1.760,
     &     1.760, 1.770, 1.770, 1.760, 1.740  /
      DATA ( REFIND ( i, 10, 2 ), i=1, n_wlr ) 
     &   / 2.00E-6, 4.00E-7, 3.00E-8, 2.00E-8, 1.00E-8, 1.00E-8, 
     &     2.00E-8, 1.00E-7, 3.00E-6, 2.00E-4, 4.00E-4, 6.00E-4,
     &     8.00E-4, 1.00E-3, 2.00E-3, 4.00E-3, 7.00E-3, 1.00E-2,
     &     3.00E-3, 2.00E-3, 1.60E-3, 1.40E-3, 1.40E-3, 1.40E-3,
     &     2.50E-3, 3.60E-3, 1.10E-2, 2.20E-2, 5.00E-3, 7.00E-3,
     &     1.30E-2, 2.00E-2, 2.60E-2, 3.00E-2, 2.80E-2, 2.60E-2,
     &     1.80E-2, 1.60E-2, 1.50E-2, 1.40E-2, 1.40E-2, 1.40E-2,
     &     1.60E-2, 1.80E-2, 2.30E-2, 3.00E-2, 3.50E-2, 9.00E-2,
     &       0.120,   0.130,   0.135,   0.152,   0.165,   0.180, 
     &       0.205,   0.275,   0.300,   0.500,   1.000    /         
C
C     -11-       Water
      DATA ( REFIND ( i, 11, 1 ), i=1, n_wlr )
     &   / 1.349, 1.345, 1.339, 1.335, 1.334, 1.333,  
     &     1.332, 1.331, 1.329, 1.326, 1.323, 1.318,
     &     1.312, 1.306, 1.292, 1.261, 1.188, 1.371,
     &     1.478, 1.422, 1.400, 1.369, 1.351, 1.332,
     &     1.325, 1.298, 1.265, 1.363, 1.339, 1.312, 
     &     1.294, 1.286, 1.278, 1.272, 1.262, 1.255, 
     &     1.243, 1.229, 1.218, 1.179, 1.153, 1.126, 
     &     1.123, 1.146, 1.210, 1.258, 1.270, 1.346,
     &     1.386, 1.423, 1.443, 1.480, 1.491, 1.506,
     &     1.531, 1.549, 1.551, 1.532, 1.519  /
      DATA ( REFIND ( i, 11, 2 ), i=1, n_wlr )
     &   / 1.60E-08, 8.45E-09, 1.86E-09, 9.69E-10, 1.18E-09, 1.96E-09, 
     &     1.46E-08, 3.05E-08, 3.29E-07, 4.18E-06, 3.69E-05, 9.97E-05,
     &     1.15E-04, 1.10E-03, 3.90E-04, 1.74E-03, 1.90E-02,    0.272,
     &     9.24E-02, 2.04E-02, 9.40E-03, 3.50E-03, 4.60E-03, 1.34E-02,
     &     1.24E-02, 1.16E-02,    0.107, 8.80E-02, 3.92E-02, 3.21E-02,
     &     3.39E-02, 3.51E-02, 3.67E-02, 3.79E-02, 3.99E-02, 4.15E-02,
     &     4.44E-02, 4.79E-02, 5.08E-02, 6.74E-02, 9.68E-02,    0.142,
     &        0.259,    0.305,    0.370,    0.396,    0.402,    0.427, 
     &        0.429,    0.426,    0.421,    0.393,    0.379,    0.370,
     &        0.356,    0.339,    0.328,    0.336,    0.385 /
C
C     -12-      Biomass Burning
      DATA ( REFIND ( i, 12, 1 ), i=1, n_wlr )
     &   / 1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430, 1.430,
     &     1.430, 1.430, 1.430, 1.430, 1.430  /
      DATA ( REFIND ( i, 12, 2 ), i=1, n_wlr )
     &   / 0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
     &     0.0035, 0.0035, 0.0035, 0.0035, 0.0035  /
C
C   ------------------------------------------------
C        Mixing Ratios
      DATA (( MIX_RATIO ( i, j ), i=1, max_comp ), j=1, n_class )
     &   / 0.99990,  1.0e-4,   0.0,        0.0,
     &     0.93877,  2.27E-06, 0.06123,    0.0,
     &     0.59450,  1.67E-07, 0.40550,    0.0,
     &     0.60000,  0.0171,   0.001,      0.3819,
     &     0.5939,   0.4051,   9.6E-04,    0.0,
     &     0.5421,   0.4579,   3.8680E-07,  0.0,
     &     0.8542,   0.14568,  7.2842E-05, 0.0,
     &     1.0,      0.0,      0.0,        0.0,
     &     1.0,      0.0,      0.0,        0.0,
     &     0.99958,  0.00042,  0.0,        0.0,
     &     0.93876,  2.27E-06, 0.06123,    0.0,
     &     0.5945,   1.66E-07, 0.4055,     0.0,
     &     1.0,      0.0,      0.0,        0.0,
     &     1.0,      0.0,      0.0,        0.0,
     &     0.999875, 0.000125, 0.0,        0.0,
     &     0.999875, 0.000125, 0.0,        0.0,
     &     0.99,     0.01,     0.0,        0.0,
     &     1.0,      0.0,      0.0,        0.0,
     &     1.0,      0.0,      0.0,        0.0 /
C
C   matrix storing for each aerosol class the number of the
C            aerosol  components
      DATA ( ( COMP_MAT ( i, j ), i=1, max_comp ), j=1, n_clascomp )
     &   / 3,  1,   0,  0,
     &     3,  1,   5,  0,
     &     3,  1,   5,  0,
     &     7,  8,   9, 16,
     &     3,  5,   6,  0,
     &    10, 11,  12,  0,
     &    13, 14,  15,  0,
     &    17,  0,   0,  0,
     &    18,  0,   0,  0,
     &     4,  6,   0,  0,
     &     4,  2,   5,  0,
     &     4,  2,   5,  0,
     &    27,  0,   0,  0,
     &    28,  0,   0,  0,
     &    21, 22,   0,  0,
     &    23, 24,   0,  0,
     &    21, 25,   0,  0,
     &    21,  0,   0,  0,
     &    26,  0,   0,  0,
     &     1,  0,   0,  0,
     &     2,  0,   0,  0,
     &     3,  0,   0,  0,
     &     4,  0,   0,  0,
     &     5,  0,   0,  0,
     &     6,  0,   0,  0,
     &     7,  0,   0,  0,
     &     8,  0,   0,  0,
     &     9,  0,   0,  0,
     &    10,  0,   0,  0,
     &    11,  0,   0,  0,
     &    12,  0,   0,  0,
     &    13,  0,   0,  0,
     &    14,  0,   0,  0,
     &    15,  0,   0,  0,
     &    16,  0,   0,  0,
     &    19,  0,   0,  0,
     &    20,  0,   0,  0,
     &    21,  0,   0,  0,
     &    22,  0,   0,  0,
     &    23,  0,   0,  0,
     &    24,  0,   0,  0,
     &    25,  0,   0,  0,
     &     1,  2,   3,  4,
     &    29,  0,   0,  0,
     &    30,  0,   0,  0,
     &    31,  0,   0,  0,
     &    32,  0,   0,  0  /
C
C   how many components in each class
      DATA ( VEC_COMP ( i ), i=1, n_class )
     &   / 2,  3,  3,  4,  3,  3,  3,  1,  1,
     &     2,  3,  3,  1,  1,  2,  2,  2,  1,  1  /
C
C   values defining the size distribution method for the external mixing
      DATA ( NEQVEC ( i ), i=1, n_clascomp )
     &   / 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1,
     &     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     &     1, 1, 1, 1, 1, 2, 2, 2, 2 /
C
C   for each component this vector refers to the appropriate refractive index
      DATA ( COMP_TO_RI (i), i=1, n_comp )
     &   / 1,  1,  2,  2,  3,  4,  4,  4,  4,
     &     7,  7,  7,  7,  7,  7,  5,  5,  6,
     &     7,  7,  9,  9,  8,  8, 10, 12,  5,
     &     6,  11, 11, 11, 11 /
C
       END
