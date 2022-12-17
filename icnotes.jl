### A Pluto.jl notebook ###
# v0.19.12

using Markdown
using InteractiveUtils

# ╔═╡ cf75352c-23ce-11ed-11bf-49ef8ee9e3c4
begin
	using Unitful
	using UnitfulAstro
	using PhysicalConstants.CODATA2018: G, σ, k_B
md"""
# In-class Notes for PHYS4000 Introduction to Astrophysics
"""
end

# ╔═╡ a6846707-8be1-4964-a641-1b0a9ca24928
md"""
## 2022-08-24

Spherical coordinates:

$\begin{align*}
x &= r \sin{θ} \cos{ϕ} \\
y &= r \sin{θ} \sin{ϕ} \\
z &= r \cos{θ}
\end{align*}$

Consider patch in the sky defined in spherical coordinates with dimensions

- ``dr``
- ``r \sin{θ} \, dϕ``
- ``r \,dθ``

$r^2 \sin{θ} \,dr\,dθ\,dϕ$

Sphere of constant radius (Integrate over surface of sphere):

$\sin{\theta} \,dθ\,dϕ$

**solid angle** -- Size of something from your point of view. Measured in **steradians (sr)**.

Find solid angle of patch in the sky:

$∬ \Omega(θ,ϕ) \sin{θ} \,dθ \,dϕ$

Find solid angle over a full sphere:

$\begin{align*}
∫_0^{ϕ = 2π} ∫_0^{θ = π} \sin{θ} \,dθ \,dϕ &= 2π ∫_0^π \sin{θ} \,dθ \\
&= 2π \left[-\cos{θ}\right]_0^π \\
&= 4π \text{ sr}
\end{align*}$

- 360°

- 60' = 1° arcminute

- 60'' = 1' arcseconds

$\frac{360°}{24 \text{ hr}} = 15°/\text{hr}$

$75° \text{ W} → -5 \text{ hr}$

UTC-5 "EST"
"""

# ╔═╡ 02846929-9c37-48db-927f-72c1fdc34a43
md"""
Solid angles

Problem a

$\begin{align*}
∫_0^{ϕ = 2π} ∫_0^{θ=11π/30} \sin{θ} \,dθ \,dϕ &= 2π ∫_0^{133π/30} \sin{θ} \,dθ \\
&= 2π \left[-\cos{θ}\right]_0^{133π/30}
\end{align*}$
"""

# ╔═╡ f7891f0b-5995-42e2-b0de-eb2370c35acc
md"""
## 2022-08-26

0° longitude = Prime Meridian; Greenwich, England

Angle above or below celestial equator --- δ "declination"

ecliptic is the apparent path of the Sun as observed from the Earth

RA = Right Ascension

0° = ♈ = vernal equinox

"Epoch" J2000 -- January 1, 2000, 12 noon
"""

# ╔═╡ dd6aa32f-9fd2-4c6c-a6ec-19c308b0edb9
md"""
## 2022-08-29

Sidereal period 27.3 days

Synodic Period 29.5 days -- full moon to full moon

Precession 18.6 years -- moon precesses about a tilt of 5.1°

Solar eclipse is when shadow of moon lands on Earth's surface.

Julian Calendar 365.24 days

Gregorian Calendar -- leap day every 4 years except in years divisible by 100 but not divisible by 400 (currently used)
"""

# ╔═╡ ed5c1490-bd9b-40d4-bb40-e37db7a26644
md"""
## 2022-08-31

- Retrograde

- Parallax

- Abberation of starlight

tan(θ) = V/c ≈ θ ∼ 10^-4 rad = 20.5''

π'' ∼ 0.75''

Proxima centauri 4.2 lyr
"""

# ╔═╡ 23630795-bf42-4b3f-99fa-2091371881b7
md"""
## 2022-09-02

- Sun: ``20 × 10^{30} \text{ kg} = M_⊙`` (99.98% mass of the solar system)

- Jupiter ``2 × 10^{27} \text{ kg} = M_J`` (71% of the remaining mass)

- Saturn ``6 × 10^{26} \text{ kg}`` (21% of the remaining mass)

- Uranus (3% of the remaining mass)

- Neptune (3.8% of the remaining mass)

- ``M_⊕ = 6×10^{24} \text{ kg}``

- ``d_⊕ = 3.85×10^{8} \text{ m}``

- ``d_⊙ = 1.5 \times 10^{11} \text{ m}``
"""

# ╔═╡ a55c0f91-fb77-479d-ab4d-8cacb161b0f5
md"""
### Accelerations on the Moon

Find the acceleration on the Moon due to the gravitational force on (a) the Earth and (b) the Sun.
(Keep this result in mind for when we discuss the Hill Radius).

_**Solution.**_

This ratio will tell us whether the acceleration due to the Earth or the Sun is greater:

$\frac{A_⊕}{A_⊙} = \frac{\frac{GM_⊕ m}{{a_⊕}^2} \frac{1}{m}}{\frac{GM_⊙ m}{{a_⊙}^2} \frac{1}{m}} = \frac{{a_⊙}^2}{{a_⊕}^2} \frac{M_⊕}{M_⊙} = \frac{(10^{11})^2}{(10^8)^2} \frac{10^{24}}{10^{30}} \frac{3}{4}$

- ``m = moon``
"""

# ╔═╡ 186f95ae-0177-4a2f-85d1-03982c468427
let
	# F = ma ⟹ a = F/m

	m = 7.4e22u"kg"
	M = 6e24u"kg"
	
	d = 1.5e11u"m"

	(G*M) / (d^2) |> u"m/s^2"
end

# ╔═╡ a391d1c8-7c64-4638-b28d-145e917f45a7
md"""
### Tidal Forces

$ΔF = G\frac{M_⊕M_∘}{{a_{moon}}^2} = G\frac{M_⊕ M_∘}{(a_{moon} - R_⊕)^2}$


Taylor Series

$F_m(r) ≈ F_m(r_0) + \left. (r - r_0) \frac{dF_m}{dr} \right|_{r = r_0} + ⋯$

$\frac{dF_m}{dr} = \frac{d}{dr} \left(-\frac{Gm{m_ω}'}{r^2}\right) = \frac{2Gm{m_ω}'}{r^3}$
"""

# ╔═╡ 1efd34cc-2321-4a70-9c04-548a3c9b550f
md"# 2022-09-07"

# ╔═╡ 33640102-c99d-4020-9a96-6cf6f78ad36c
md"""
### Tidal Forces

$ΔF = (r - r_0) \frac{2GMm}{{r_0}^3}$

Diagram:
- Earth and Moon separated by some distance on the ``x``-axis
- ``r_0`` denotes the center of Earth
- ``R_⊕`` denotes the radius of the Earth
- ``r_- = r_0 - R_⊕`` denotes side of Earth farthest away from Moon
- ``r_+ = r_0 + R_⊕`` denotes side of Earth closest to Moon
- The tidal forces with respect to each side is then:

  $ΔF_+ = (r_0 + R_⊕ - r_0) = +R_⊕$

  $ΔF_- = (r_0 - R_⊕ - r_0) = -R_⊕$

  $ΔF = ±\frac{2GMmR_⊕}{{r_0}^3} = ±1.14 × 10^{-6} \frac{\text{N}}{\text{kg}} ⋅ \text{m}$

Tidal forces on the Sun:

$ΔF_⊙ = ±\frac{2GM_⊙mR_⊕}{a_⊕}$

$a_⊕ = 1 AU = 1.5 × 10^{11} \text{ m} = c⋅(8.3\text{ min}) = c⋅(60 \text{ s/min} ⋅ 8.3 \text{ min})$

Ratio of tidal force between Sun and Moon:

$\frac{ΔF_⊙}{ΔF_{\text{Moon}}} ≈ 0.44$

- "spring tides" -- Moon is on horizontal with respect to Sun and Earth

- "neap tides" -- Moon is on vertical with respect to Sun and Earth
"""

# ╔═╡ e5f7aa20-462e-478f-b78c-92fd147c1d80
md"""
### Tidal force on Earth by the Moon

$Δ\vec{F} ≈ \frac{GM_{\text{Moon}}m R_⊕}{{r_0}^3} (2\cos{θ}\;\hat{i} - \sin{θ} \;\hat{j})$
"""

# ╔═╡ 708f3c9f-51ae-44d6-9748-cb8fb57ee68e
md"""
### Tidal Braking

$\frac{dP_{\text{rot}}}{dt} = 0.0016 \frac{\text{s}}{\text{century}}$

$\frac{dr_{\text{Moon}}}{dt} = \frac{4 \text{ cm}}{\text{yr}}$
"""

# ╔═╡ 29a0b64b-27a9-4f91-bd09-b95b20fa208c
md"""
### Tidal Locking

$P_{\text{orbit}} = 27.3 \text{ days}$

$P_{\text{orbit}} = 27.3 \text{ days}$

- Mare = "Sea"
"""

# ╔═╡ 997fa881-c452-4a32-a2fd-c29bc15aa1d2
md"## 2022-09-09"

# ╔═╡ 0eb5cb3d-b895-4176-809c-04cc79ded20b
md"""
### Roche Limit

$F_S = -\frac{Gmm}{(Δr)^2}$

$ΔF_T = \frac{dF_T}{dr} Δr = \frac{2Mm}{r^3} Δr$

$F_s + ΔF_T = 0$

$\frac{2GMm}{r^3} Δr - \frac{Gm^2}{Δr^2} = 0$

$r_R = \left(\frac{2M}{m}\right)^{1/3} Δr$

$\bar{ρ} = \frac{3M}{4πR^3}$

$M = \frac{4}{3} π R ρ_M$

$m = \frac{4}{3} π \left(\frac{Δr}{2}\right)^3 ρ_m$

$r_R = 2.44 \left(\frac{ρ_M}{ρ_m}\right)^{1/3} R \qquad \text{(Roche Limit)}$
"""

# ╔═╡ f7cceb40-587a-438a-91de-db0ab56c06c2
# Earth's Roche Limit
let
	moon = 3.8e8u"m"
	iss = 400u"km"
	R = 6.371e6u"m"
	2.44R
end

# ╔═╡ 77d10fa6-b288-4b9d-a577-8773d94a944a
md"""
### Hill's Radius

$Δg = g_\text{Moon} - g_⊕ = \frac{GM_⊙}{(a_⊕ - r)^2} - \frac{GM_⊙}{{a_⊕}^2}$

$(1 - x)^{-2} ≅ 1 + 2x + ⋯ \qquad x ≪ 1$

$(a_⊕ - r)^{-2} ≅ {a_⊕}^{-2} \left(1 - \frac{r}{a_⊕}\right)$

$g_\text{moon} ≅ \frac{GM_⊙}{{a_⊕}^2}\left(1 + \frac{2r}{a_⊕}\right)$

$Δg = \frac{2GM_⊙}{{a_⊕}^3} r$

``r_H`` when ``Δg = g_\text{⊕,Moon}``

$r_H = \left(\frac{M_⊕}{2M_⊙}\right)^{1/3} a_⊕$
"""

# ╔═╡ ae9d4b3c-08fb-4be7-a97a-f7c823d3e4c4
md"## 2022-09-12"

# ╔═╡ c08d1545-9a61-445f-b403-719047b996ca
md"""
$ΔE = hf = hν$
"""

# ╔═╡ 7b2b1108-4e11-41e1-8a98-273626dabdf7
md"""
### 3 photon-atom interactions

- Spontaneous Emission

- Stimulated Emission

- Absorption

**Spontaneous Emission**

energy levels "permitted" or "forbidden" electron pathway (a quantum effect). if it's permitted, it will drop down energy level very quickly, otherwise if it's forbidden it will stay in high energy levels

$X^* → X + hν$

**Stimulated Emission**

Electron on left side has exactly right energy ``ΔE``.
A resonance effect emits photons.

$X^* + hν → X + 2hν$

**Absorption**

Electron in lower level, photon comes in and raises it up to a higher energy level
An unexcited photon gives us an excited photon:

$X + hν → X^*$
"""

# ╔═╡ 23c81e6e-725c-4b88-833a-18918067b97b
md"""
### Collisonal Effects:

  1. Collisional Excitation

  2. Collisional De-excitation

**Collisional Excitation**

What happens is you have an atom in a lower energy level state.
Some kinetic energy interacts with this environment (e.g., electron bounces into electron cloud of atom)

You have some atom plus some energy that gives us an excited atom plus some kinetic energy that has been reduced:

$X + \frac{1}{2} m_e v^2 → X^* + \frac{1}{2} m_e {v'}^2, \qquad v' < v$

**Collisional De-excitation**

Some atom bumps into an electron.
It will leave with more energy than it came in with.

$X^* + \frac{1}{2} m_e v^2 → X + \frac{1}{2} m_e {v'}^2, \qquad v' > v$
"""

# ╔═╡ 7caead97-a193-4824-b7fb-dcc2caa93aaa
md"""
### 3 Ionization processes (taking electrons away from atoms):

- Photoionization

  $X + hν → X^+ + \frac{1}{2} m_e v^2$

- Collisional ionization (an electron comes in and knocks another one off)

  $X + \frac{1}{2}m_e {v_1}^2 → X^+ + \frac{1}{2} m_e {v_1}^2 + \frac{1}{2} m_e {v_2}^2$

- Recombination

  $X^+ + \frac{1}{2}m_e v^2 → X + hν$
"""

# ╔═╡ 51e16aef-17ea-4f5a-8f90-0e9e48083387
md"""
### Kirchoff's Radiation Laws

- ``λ`` = wavelength

- ``I`` = Intensity

1. Solid, liquid, dense gas → continuous spectrum

   On a ``λ``-``I`` plot, curves up and then down, converging to some ``I`` value


2. Tenuous gas + background → absorption spectrum

   On a ``λ``-``I`` plot, curves up and down to zero, with two slits in between creating a "three hill effect"


3. Tenuous gas + weak background → emission spectrum

   On a ``λ``-``I`` opposite of (2), with two slits coming up from zero

Emission Line -- a "slit" located at ``λ`` "no shape assumed"

Spontaneous Emission

Einstein "A"s

``n = 2 → n = 1`` "number densities"

``n_2 → n_1``

``A_{21}``

``\displaystyle \frac{dN_γ}{dt} = n_2 A_{21}`` "A" calculation throuh Q.M.

$A_{21} = \begin{cases}
∼10^{-8} \text{ s}^{-1} & \text{for permitted transmissions} \\
∼1 \text{ s}^{-1} & \text{for forbidden transmissions}
\end{cases}$
"""

# ╔═╡ ea44a2dd-bd56-45dc-ac04-f25d60bc53a5
md"""
### For a photon

$E = hν, \quad p = \frac{E}{c}$

$Δx Δp ≳ ħ$

$Δt ΔE ≳ ħ$

"natural broadening" -- broadening due to uncertainty principle ⟹ Lorentz Distribution

- Doppler Broadening

- Turbulent Broadening

  Motion of gas clouds


- Rotational Doppler

  You have an object that's rotating with angular momentum ``\vec{L}``, one point going into the page, and one point going out of the page, Doppler effect will happen on one of those points.


- Pressure Broadening

  Collisions


- Zeeman Broadening

  Spin up, spin down
"""

# ╔═╡ 0a786f16-6e55-4b1b-bc27-04f7f3463e3b
md"## 2022-09-21"

# ╔═╡ 747d531d-0e18-4fa1-812b-b1896318ff26
md"""
$\frac{P}{A} = σ_{SB} T^4$

$L = 4πR^2 σ_{SB} T$

$B = \frac{L}{4πd^2}$

$\frac{L_*}{L_⊙} = \frac{4πR_*^2 σ T_*^4}{4πR_⊙^2 σ T_⊙^4}$

$L_* = L_⊙ \left(\frac{R_*}{R_⊙}\right)^2 \left(\frac{T_*}{T_⊙}\right)^4$
"""

# ╔═╡ a2ebd2f3-a993-48d7-ba50-9181b8f74567
md"""
### Wein's Law

$λ_p ≃ (0.20) \frac{hc}{kT} = \frac{2.9 × 10^7 \text{ Å ⋅ K}}{λ} = \frac{2900 \; μ\text{m}⋅\text{K}}{λ}$
"""

# ╔═╡ 4b0984cd-ffa6-4979-8a40-6d105777fd3b
md"""
### In general

$T_p = (1 - a)^{1/4} \sqrt{\frac{R_*}{2d}} T_*$

where ``a`` is *albedo* "reflective"
"""

# ╔═╡ fdedfed2-1ebf-4a47-8e38-40efd955dd8b
md"""
### Cameras

- Limited by ``\displaystyle \pi \left(\frac{D}{2}\right)^2``

- Limited by diffraction

- Limited by Earth's atmosphere
"""

# ╔═╡ 7235caba-cbf2-46ed-910d-61845959d66a
md"""
### Diffraction Limit

$θ(\text{rad}) = 1.22 \frac{λ}{D}$
"""

# ╔═╡ 890d27d5-acbf-4e54-a8c5-775c0038b80e
md"## 2022-09-23"

# ╔═╡ 21af39b6-ab7e-47b8-bc74-c33720d299d5
md"""
1. Size ``\displaystyle \left(π \frac{D^2}{2}\right)``

2. Diffraction ``θ_\text{min} ≃ 1.22 \frac{λ}{D}``

3. Seeing
"""

# ╔═╡ 03e2972e-9d30-4081-be29-fe8847fa6224
md"""
### Example

100 nm - "COVID"

2 cm

$θ = 1.22 \frac{λ}{D} = \frac{550 \text{ nm}}{2 \text{ cm}} ⋅ 1.22 = 13 \text{ cm}$

$θ_\text{COVID} = 1.03''$

Need ``F = 2 \text{ km}``

The point is you can't observe COVID with a microscope

You can shrink the wavelength, but you will break the object
"""

# ╔═╡ 5ccf409a-b110-4ba4-9391-a4985450e8bc
md"## 2022-09-26"

# ╔═╡ 6c52e70f-2e56-4912-8df2-6f499ea6daa5
md"""
### Covid example again

$θ_\text{min} = 1.22 \frac{λ}{D}$

$D = 1.22 \frac{λ}{θ_\text{min}} ≈ 0.13 \text{ m}$

Small angle approximation:

$\tan{θ} ∼ θ = \frac{100 \text{ nm}}{2 \text{ cm}} ≃ 0.5''$
"""

# ╔═╡ 26af5f89-7d48-43da-9cd7-2b2571b58ea6
md"""
### Telescope

Refactor
"""

# ╔═╡ 3c884992-7c55-4842-b24f-879746e11faf
md"""
### Detectors

- Eye & Book

- Photographic Plates

- Photoemissive detector

- CCD
"""

# ╔═╡ 428d35f3-031e-4c3e-b738-93c6bf99aff8
md"## 2022-09-28"

# ╔═╡ 947ae4c3-7435-48c0-bffc-9a40f5d10083
md"""
### DART mission

- DART crashes into asteroid moon (another asteroid)

- Asteroid is made of a bunch of rock
"""

# ╔═╡ 893194c6-faff-45f9-b890-e11a7f763279
md"""
### Notes

- Ceres

- Zodiacal Light

- Nebular Hypothesis "disk of gas"

- Protostar

  - Refractory Material

  - No hydrogen, helium, or water -> "Rocky" "Terrestrial Planets"

- Gas Giants

  - Jupiter

  - Saturn

  - "snow line"

- Volatile

  - Uranus

  - Neptune

- Pluto
"""

# ╔═╡ b82ea92a-948d-46be-8787-2e409a277690
md"## 2022-09-30"

# ╔═╡ 1ba7ae60-02d4-4c63-a604-29225dc3d26f
md"""
### Notes

- Exoplanets

- "Direct Imaging"

- Imagine observing Jupiter from Proxima Centauri (4.2 lyrs)

  - θ = 1.9×10⁻⁵ rad

  - Visible: L♃ / L⊙ ≃ 4 × 10⁻⁹

  - IR: L♃ / L⊙ = 3 × 10⁻⁴

- 1 lyr = (1 yr) ⋅ c = 9.5×10⁵ m

- Occulting Mask

- Telescope Roll-Reduction
"""

# ╔═╡ 296a0740-3130-41b1-b5f2-6f071f708f14
md"""
#### Radial Velocity Method

Sun, Center of Mass (COM), Jupiter

``M_A`` - Mass of the Sun

``M_B`` - Mass of Jupiter

``a_A`` - Distance between Sun and COM

``a_B`` - Distance between COM and Jupiter

$\frac{a_B}{a_A} = \frac{M_A}{M_B}$

``a_⊙ = 5.2×10^{-3} \text{ AU} ≈ 1.1 R_⊙``
"""

# ╔═╡ ab8e1963-e32d-4e77-a9a7-b91395d5d71f
md"""
### Doppler Shift

``v_r`` - radial velocity

$\frac{\Delta λ}{λ} = \frac{v_r}{c}$
"""

# ╔═╡ b4a7bf99-2ebb-41f6-88a0-731116087943
md"""
### Assume Circular Orbits

``τ`` - Period of orbit

$τ = \frac{2π a_A}{V_A} = \frac{2π a_B}{V_B}$

This means that

$\frac{a_A}{V_A} = \frac{a_B}{V_B}$
"""

# ╔═╡ 65dcbc54-55eb-4102-abf1-65dc4880c171
md"""
### Jupiter's Orbit

$V_B = \frac{2πa_B}{τ} = \frac{2π(5.2 \text{ AU})}{11.9 \text{ yrs}} = 13 \text{ km/s}$
"""

# ╔═╡ 1d005654-7e57-4c0b-a15d-01df61aca338
md"""
### Newton's K3L

$(a_A + a_B)^3 = \frac{G(M_A + M_B)}{4π^2} p^2$

$A^3 = P_\text{yrs}^2$

$A^3 = \frac{GM}{4π^2} p^2$

$M_B ≈ \left(\frac{4π^2 M_A^2}{GP^2} {a_A}^3\right)^{1/3}$

$a_A = \frac{PV_A}{2π}$

$M_B ≈ \left(\frac{M_A^2 P}{2πG} {V_A}^3\right)^{1/3}$
"""

# ╔═╡ 2b552a90-0331-4901-99ef-88602c17e7a0
md"""
### Observing exoplanets

i = 0° →

i = 90° ↑ - ``V_A \sin{i}``
"""

# ╔═╡ f597ff64-9c63-45ba-b60b-d8b9b5c23277
md"## 2022-10-03"

# ╔═╡ 0bd75df7-c899-4276-a85d-486bb3f0d0d2
md"""
### Activity 5 (Radial Velocity Method): The Sun's Wobble Due To Earth's Orbit

Find the magnitude of the Sun's velocity due to the Earth's orbit.
What is the period of this "wobble"?

_**Solution.**_

$v_⊕ = 30 \text{ km/s}$

$M_⊕ = 6 × 10^{24} \text{ kg}$

$M_⊙ = 2 × 10^{30} \text{ kg}$

$V_⊙ = \frac{M_⊕}{M_⊙} v_⊕ = \frac{6}{2} ⋅ 3 ⋅ \left(\frac{10^{24}}{10^{30}} ⋅ 10^4\right) = 9 × 10^{-2} = 0.09 \text{ m/s}$

$\text{Period} = 1 \text{ year}$
"""

# ╔═╡ f560f493-b3e4-4f10-971a-e84abfdef992
let
	ve = 30u"km/s"
	me = 6e24u"kg"
	ms = 2e30u"kg"
	vs = me/ms * ve |> u"m/s"
end

# ╔═╡ b8542265-0074-41d8-95ad-f4c98e6c653f
md"""
### Transit Method

$\tan{α} ∼ α = \frac{R + r}{a}$

$\text{prob}\left(α < \frac{R + r}{a}\right) = \frac{\Omega}{4π} = \frac{(2α)(2π)}{4π} = \frac{4π α}{4π} = \alpha$

$R_♃, \; a ∼ 0.05 \text{ AU},\quad \text{prob} ∼ 9\%$
"""

# ╔═╡ 5b9fa922-79a2-41b7-8e34-4b06738781b5
md"""
### (Gravitational) Microlensing Method
"""

# ╔═╡ 17489f9d-3333-4ad6-a8df-be77d815d18e
md"## 2022-10-05"

# ╔═╡ 22364859-0378-4982-974b-dc0de0862151
md"""
### Chapter 13

- Distances

  - Only direct way: Parallax


Example: Angle between Earth and Sun, from perspective of star

- ``d = 1 \text{ AU}`` - Distance between Earth and Sun

- ``D`` - Distance between Sun and star

$\tan{θ} ∼ θ = \frac{d}{D}$

$D = \frac{1 \text{ [parsec]}}{π'' \text{[arcsec]}}$

- parsec: "parallax-second"

- 1 parsec = 3.26 lyrs

- Proxima Centauri: ``π'' = 0.77''``

- ``D = 1.29 \text{ pc} = 4.2 \text{ lyr}``

ESA

Hipparcos ``∼0.001''``

GAIA ``∼20 \;μ\text{arcsec}``

Astrometry - "measuring distance to stars"
"""

# ╔═╡ 516f6dd5-8137-418d-a86f-85e42ee31211
md"""
### Star map

Hipparchus ∼150 BC

Celestial Sphere

Brightness: Rank 1, 2, … 6

Porgson 1850

1 to 6: ``f ∼ 100x``

$\frac{F_1}{F_6} = 100 \qquad \frac{F_1}{F_2} = 100^{1/5} ≃ 2.512$

$\begin{align*}
\frac{F_A}{F_B} &= 100^{(m_B - m_A)/5} \\
\log_{10}\left(\frac{F_A}{F_B}\right) &= \left(\frac{m_B - m_A}{5}\right) \log_{10}(100) \\
\log_{10}\left(\frac{F_A}{F_B}\right) &= \frac{2}{5} ⋅ (m_B - m_A) \\
m_B - m_A &= 2.5 \log_{10}\left(\frac{F_A}{F_B}\right)
\end{align*}$


Vega reference: ``m_\text{vega} = 0.0``

Zero Point "ZP"

``F_0 → m_0 = 0``

$0 - m_A = 2.5 \left[\log_{10}F - \log_{10}F_0\right]$

$m_A = -2.5\log_{10}(F_A) - ZP$

"asinh magnitudes"

"Luptitudes"

$m = \frac{-2.5}{\ln(10)} \left(\text{asinh}\left[\frac{f/f_0}{2b}\right]+\ln{(b)}\right)$

$b = \text{softening}(1σ \text{ noise})$
"""

# ╔═╡ 9e1933b7-4b89-41bb-83f5-ad3d0357ed74
md"## 2022-10-10"

# ╔═╡ 180b9b58-6bb8-4ac7-bdd2-d34ab3b3656b
md"""
### Color Index (B - V)

"-" → bluer

"+" → redder

``(B - V)_\text{Vega} = 0.0``

``(B - V)_\text{Vega} < 0.0`` - bluer than Vega

``(B - V)_\text{Vega} > 0.0`` - redder than Vega

Emperical

$T ≈ \frac{9000 \text{ K}}{(B - V) + 0.93}$
"""

# ╔═╡ a3d31ab8-4711-4bb1-acbf-1981db2a459d
md"""
### Properties of a star

Radius:

$\frac{R}{d} = \tan{\left(\frac{\alpha}{2}\right)} ≃ \frac{α}{2}$

Interferometry:

$α[\text{radians}] > \frac{λ}{b}$

S.B. Law:

$L = 4πR^2 σ T^4$

$R = \left(\frac{L}{4π σ T^4}\right)^{1/2}$

Masses:

(Kepler/Newton)

$M_A + M_B = \frac{4π^2}{G} \frac{(a_A + a_B)^3}{P^2}$

$\sin^3{i} (M_A + M_B) = \frac{4π^2}{G} \frac{(a_A + a_B)^3}{P^2} \sin^{3}{i}$

$\frac{M_B}{M_A} = \frac{V_A ⋅ \sin{i}}{V_B ⋅ \sin{i}}$
"""

# ╔═╡ 32f97a2f-b402-4cbf-96e1-ab8df8566486
md"""
### Visual Binary

Inclined such that they are observable from our line of sight.
"""

# ╔═╡ d402b71b-2d72-456a-b000-32a72d329f9a
md"""
### Eclipsing Binaries

``F_A`` and ``F_B`` are not eclipsed:

$F_T = F_A + F_B$

``F_A`` eclipses in front ``F_B``:

$F = F_A + F_B - π R_A^2 σ T_B^4$

``F_B`` eclipses in front ``F_A``:

$F = F_B = F_T - π R_A^2 σ T_A^4$
"""

# ╔═╡ cff732bd-c45c-448a-a4d1-0c387d2cf9d4
md"""
### Spectroscopic Binaries

Use redshift to find binary star systems, period of motion, relative velocity encoded in doppler shift.
"""

# ╔═╡ 4be9b808-915c-4c4e-b658-78efcae7f73b
md"""
### Review

can calculate the radius for some stars

can calculate the temperature for any star

can calculate distance from parallax
"""

# ╔═╡ 91e891af-a835-4fe3-95f2-efd2ce5b1db1
md"## 2022-10-12"

# ╔═╡ 341c70ed-bb9c-4a6e-a74b-f2cb3b197765
md"""
$\frac{R}{R_⊙} = 1.06\left(\frac{M}{M_⊙}\right)^{0.945} \text{ for } M < 1.66 M_⊙$

$\frac{R}{R_⊙} = 1.33\left(\frac{M}{M_⊙}\right)^{0.945} \text{ for } M > 1.66 M_⊙$

$\frac{L}{L_⊙} = 0.35 \left(\frac{M}{M_⊙}\right)^{2.62} \text{ for } M < 0.7M_⊙$

$\frac{L}{L_⊙} = 1.02 \left(\frac{M}{M_⊙}\right)^{3.92} \text{ for } M > 0.7M_⊙$

$τ ∝ \frac{M}{L} ∝ M^{-1.62} \text{ for } M < 0.7M_⊙$

$\frac{M}{L} ∝ M^{-2.92} \text{ for } M > 0.7M_⊙$

OBAFGKM

Sun: G2

LTY "Brown Dwarfs"

- Spectral Type Ia Ib
- Luminosity Class II, III, IV
- Main Sequence V, VI, WD

D → He

H ↛ He
"""

# ╔═╡ 8a2b2973-fba7-42a9-b1fc-f8c725997e6e
md"## 2022-10-17"

# ╔═╡ 0c7cb557-f1f0-4e86-9b93-117d33872aea
md"""
### Chapter 15

Equations of Stellar Structures

"Standard Solar Model" Bahcall

Assumptions

- Spherical

- Non-rotating

- Static radius

Equations

- Hydrostatic Equilibrium

- Mass Continuity

- Equation of State (atoms, photons)

- Energy Transport (conductive, radiative, convective)

- Energy Generation
"""

# ╔═╡ 73dd7422-a363-444e-b8a8-28268c251864
md"""
### Hydrostatic Equilibrium

mg ↓

▭

ρ ↑

---

P + dP, Fg ↓

▭

ρ ↑

---

$\frac{dP}{dr} = -\frac{GM(r)ρ(r)}{r^2}$

$∫_{ρ_c}^0 dP = ∫_0^R -\frac{GM(r)ρ(r)}{r^2} \,dr$

Assume ``ρ(r) = ρ_0``

$M = ρV$

$M(r) = ρ \frac{4}{3} π r^3$

$ρ_c ∼ Gρ^2R^2 = 5×10^9 \text{ atm}$
"""

# ╔═╡ 0148ee47-9309-4d13-b59c-8f3c39eabb5b
md"""
### Mass Continuity

$dM = 4πr^2 ρ(r) \,dr$

$\frac{dM}{dr} = 4πr^2 ρ(r)$
"""

# ╔═╡ 74344902-d399-4b10-a5f3-7871f9b458c2
md"## 2022-10-19"

# ╔═╡ 5773572f-7c89-419f-98fa-45f6480a9046
md"""
### Hydrostatic Equilibrium

**Illustration.**
Consider a slab-shaped object with the properties ``m``, ``dr``, ``dA``, ``dP`` and the forces: ``P(r) ↓``, ``Fg ↓``, ``P(r) ↑``

$Fg = \Delta P \,dA$

$-\frac{GM(r) m}{r^2} = [(P + dP) - (P)] \,dA$

$-\frac{GM(r) ρ(r) \,dA \,dr}{r^2} = dP\,dA$

$m = ρ(r) \,dA \,dr$

$\frac{dP}{dr} = -\frac{GM(r)ρ(r)}{r^2}$

$\frac{dM}{dr} = 4πr^2 ρ(r)$
"""

# ╔═╡ e650fea2-21cd-44ed-80c4-d9caa67125f2
md"""
### Ionized Gas

- Electrically neutral

- 1000K+ ⟹ ionized

- $(html"<strike>Magnetic Fields</strike>")
"""

# ╔═╡ e4a2877a-7d0f-4462-b837-96d09d4d4cc4
md"""
### Ideal

$PV = NkT$

$P = \frac{N}{V} kT = η kT$

$P(r) = \frac{ρ(r)}{μm_p} kT(r)$

$P_{\text{rad}}(r) = \frac{a}{3} T(r)^4$

$a = \frac{4σ}{c} = 7.56 × 10^{-16} \frac{\text{J}}{\text{m}^3 \text{K}^4}$

$P_\text{rad} = P_\text{gas} \quad@\quad T ∼ 42 \text{ MK}$
"""

# ╔═╡ c40bd5e3-a6ef-4e10-a5ac-d2baf9cab055
md"""
### Neutrons

$μ = ?$

$𝐗 = \frac{P_\text{H}}{ρ}$

$𝐘 = \frac{P_\text{He}}{ρ}$

$𝐙 = \frac{P_\text{Me}}{ρ} = 1 - 𝐗 - 𝐘$

$𝐙 = \text{``metallicity''} = \text{[Fe/H]}$

$n_\text{H} ≈ \frac{2ρ_\text{H}}{m_p} = \frac{2}{m_p} 𝐗 ρ$

$n_\text{He} ≈ \frac{3 ρ_\text{He}}{4m_p} = \frac{3}{4m_p} 𝐘 ρ$

$n_\text{Me} ≈ \frac{1}{2m_p} ρ_\text{Me} = \frac{1}{2m_p} 𝐙 ρ$

$\frac{𝐙 + 1}{A m_p} ≈ \frac{𝐙}{A m_p} ≈ \frac{A}{2} \frac{1}{Am_p} = \frac{1}{2m_p}$

$P(r) = \frac{ρ(r)}{μm_p} kT(r)$
"""

# ╔═╡ e44e87ab-fd74-4f1f-8709-0d93b4c3616e
md"## 2022-10-21"

# ╔═╡ 47a2f37c-f5c9-4d88-b808-21a4b2d1766e
md"""
### Review

1. Hydrostatic Equilibrium

   $\frac{dP}{dr} = -\frac{GM(r) ρ(r)}{r^2}$

2. Mass Continuity

   $\frac{dM}{dr} = 4πr^2 ρ(r)$

3. Eqns State

   $P_\text{rad} = \frac{a}{3} T(r)^4$

   $P_\text{gas} = \frac{ρ(r) k T(r)}{μm_p}$

   $μ ≃ 1$
"""

# ╔═╡ f4991c0d-d760-451b-a4bd-64d75d0a0f29
md"""
### Energy Transport

- Radiation

- Convection

- $(html"<strike>Conduction</strike>") (it's only the dominant mechanism for basically solids)

$P_\text{rad} = \frac{a}{3} T^4 ≈ \frac{a}{3} T^4 \left[1 + 4\frac{dT}{T}\right]$

$\Delta ≈ \frac{4a}{3} T^3 \,dT$

$F_\text{rad} = (4πr^2) \frac{4a}{3} T^3 \,dT$

$F_\text{rad} = -\frac{16}{3} ar^2 π T^3 \,dT$

``τ`` - "optical depth" (opacity)

$dτ = -ρ(r) K(r) \,dr$

$F_\text{rad} = \frac{L(r)}{c} \,dτ$

$-\frac{16}{3} π ar^2 T^3 \,dT = -\frac{L(r)}{c} ρ(r) K(r) \,dr$

$a = \frac{4σ}{c}$
"""

# ╔═╡ ca3361e7-63b6-4b0f-aa6c-f61041a70374
md"""
### Random Walk

$\vec{D} = \vec{ℓ}_1 + \vec{ℓ}_2 + ⋯ + \vec{ℓ}_N$

$\vec{D}^2 = (\vec{ℓ}_1 ⋅ \vec{ℓ}_1) + (\vec{ℓ}_2 ⋅ \vec{ℓ}_2) + ⋯ + (\vec{ℓ}_N ⋅ \vec{ℓ}_N)$

$⟨D^2⟩ = Nℓ^2$

$D = \sqrt{N} ℓ$

Heads, tails:

$\frac{\text{H}}{\text{T}} → 1$

$⟨|\text{H} - \text{T}|⟩ → \sqrt{N}$

photon escapes the Sun?

$⟨ℓ⟩ = \frac{1}{ησ} = \frac{1}{ρκ} ≃ 0.02 \text{ m}$

$\sqrt{N} = \frac{R_⊙}{ℓ} = \frac{7 × 10^8 \text{ m}}{0.02 \text{ m}} = 3.5 × 10^{10}$

time?

$t = \frac{ℓ}{c} = 6.67 × 10^{-11} \text{ s}$

$t ⋅ N = \frac{ℓ}{c} \left(\frac{R_⊙^2}{ℓ^2}\right) = 8.2 × 10^{10} \text{ s} = 2603 \text{ years}$
"""

# ╔═╡ 8d8538d8-d6b6-47df-83a8-e841a8959d72
md"## 2022-10-24"

# ╔═╡ 890f6474-97ea-420b-a97c-f1e743db8021
md"""
### Thompson Scattering

$hf ≪ mc^2$

$⟨ℓ⟩ = \frac{1}{ησ}$

$σ_t = \frac{8π}{3} \left(\frac{q^2}{4πε_0 mc^2}\right) ∝ \frac{q^4}{m^2}$

$m_e ≪ m_p \implies σ_e ≫ σ_p$

$\text{He}^{2+} \qquad \frac{σ_\text{He}}{σ_\text{H}} ∝ \frac{(2)^4}{(1)^4} \frac{(1 m_p)^2}{(4 m_p)^2} = \frac{16}{16} ∼ 1$

$\text{``Me''} \qquad \frac{σ_\text{He}}{σ_\text{H}} ∝ \frac{\left(\frac{A}{2}\right)^4}{(1)^4} \frac{(1 m_p)^2}{(A m_p)^2} = \frac{A^4}{16} \frac{1}{A^2} ∼ \frac{A^2}{16}$

$A_1 Z = \frac{A}{2}$
"""

# ╔═╡ c2ac823e-eddf-4a0d-9831-cf167da68e02
md"""
### Fully Ionizing Oxygen

At what average temperature

$Z = 8, \quad n = 1$

The amount of energy it takes to remove an electron from a one-electron ``(n = 1)`` Oxygen ``(Z = 8)`` atom is:

$E_n = (-13.60 \text{ eV}) \frac{Z^2}{n^2} = -870.4 \text{ eV}$

The electron energy is related to its temperature by

$E_T = \frac{3}{2} kT$

$T = 6.7 × 10^6 \text{ K}$
"""

# ╔═╡ 4f1f50f3-7f1c-4db4-b466-66e1a2b986d7
let
	Z = 8
	n = 1
	Eₙ = (-13.60u"eV") * (Z^2 / n^2)
	T = Eₙ * (2/3) / k_B |> u"K"
end

# ╔═╡ 66dcdc21-f01f-42d5-a488-e109f300b236
md"""
$σ_e = \frac{8π}{3} \left(\frac{e^2}{4π ε_0 m_e c^2}\right)^2 = 6.65 × 10^{-29} \text{ m}^2 = 0.665 \text{ barns}$

$η_e = \frac{𝐗 ρ}{m_p} + 2 \frac{𝐘 ρ}{4 m_p} + \frac{A}{2} \frac{𝐙 ρ}{A m_p} = \frac{ρ}{2 m_p} (1 + 𝐗)$

$ρ ≃ p_⊙ ≃ 1400 \frac{\text{kg}}{\text{m}^3}$

$𝐗_⊙ = 0.73 \implies η_e ≃ 2.09 × 10^{29} \frac{1}{\text{m}^3}$

LTE

$⟨ℓ⟩ = \frac{1}{η_e σ_e} = 0.02 \text{ m}$

$\frac{\Delta T}{\Delta r} ≈ -20 \frac{\text{K}}{\text{km}}$

$\frac{dT}{dr} = -3 \frac{ρ(r) κ(r) L(r)}{64πσ T(r)^3 r^2}$

$dτ = -ρ(r) κ(r) \,dr$

$κ(r) = \frac{ησ}{ρ}$
"""

# ╔═╡ 735f1db2-b2c8-4c73-b166-efb5438981d3
md"## 2022-10-26"

# ╔═╡ 8ef5eda7-8b99-41bf-b44a-ef3d069a3a1c
md"""
### Notes

1. Bound-free

   - Photoionization

2. Bound-bound

   - Excitation

3. Free-freee
"""

# ╔═╡ 3b1337a0-9cf9-4518-bb38-34b731fcb618
md"""
### Kramer's Opacity Law

``κ`` - "opacity"

$κ ∝ ρT^{-3.5}$

es - "electron scattering"/"Thomson scattering"

$κ = κ_\text{es} + κ_\text{kr} = (1 + 𝐗)(0.02 \frac{\text{m}^2}{\text{kg}}) + KρT^{-3.5}$

$\frac{1}{\sum_i η_i σ_i} ≡ \frac{1}{ρκ} = ⟨ℓ⟩$
"""

# ╔═╡ c32a924e-63ae-4495-8940-e56d917c359f
md"""
### Convection

$T_B + dT_B$

$P_B + dP_B$

$ρ_B + dρ_B$

$T_{B_1} + P_{B_1} ρ_B$

blob

---

$T + dT$

$P + dP$

$ρ + dρ$

$T_1 P_1 ρ$

environment

---

$P = \frac{\bar{ρ}}{m} kT$

$\ln{P} = \ln{ρ} + \ln{T} + C$

$\frac{dP}{P} = \frac{dρ}{ρ} + \frac{dT}{T}$

$\frac{dρ}{ρ} = \frac{dP}{P} - \frac{dT}{T}$
"""

# ╔═╡ 64bf3867-2105-4a17-bef1-9e124554ad6e
md"""
### Adiabatic

$dQ = 0, dS = 0$

$P = P_B, \quad P + P = P_B + dP_B$

$P ∝ ρ^γ$

$\frac{dρ_B}{ρ_B} = \frac{1}{γ} \frac{dP_B}{P_B}$

$\frac{1}{γ} \frac{dP_B}{P} < \frac{dP}{P} - \frac{dT}{T}$

$\frac{dT}{T} < \frac{γ - 1}{γ} \frac{dP}{P}$

$\frac{dT}{dr} < \frac{γ - 1}{γ} \frac{T}{P} \frac{dP}{dr}$

$\left|\frac{dT}{dr}\right| > \frac{γ - 1}{γ} \frac{T}{P} \frac{dP}{dr}$

$\frac{dT}{dr} = \frac{γ - 1}{γ} \frac{T(r)}{P(r)} \frac{dP}{dr}$

$γ = \frac{5}{3}$
"""

# ╔═╡ 3e21051b-8206-4002-b5b2-be35870d4621
md"## 2022-10-28"

# ╔═╡ 3e7fd13c-dcf2-4346-9bd7-adf366d422c8
md"""
### Notes

1. Hydrostatic Equation

2. Mass Continuity

3. Equation of State

   - gas

   - radiation

4. Energy Transfer

   - radiative

   - convective

5. Energy Generation

---

$\frac{dL}{dr} = 4πr^2 ρ(r) \mathcal{E}(r)$
"""

# ╔═╡ 188c9e9c-6e87-46b4-bd51-42f263aac213
md"""
### Nuclear Fusion: proton-proton chain

1.

$p^+ + p^+ → d + e^+ + ν_e$

$e^+ + e^- → 2γ$

2.

$p + d → {}^3\text{He} + γ$

3.

${}^3\text{He} + {}^3\text{He} → {}^4\text{He} + p^+ + p^+$

---

$2 ⋅ m_e c^2 = 1.02 \text{ MeV}$

``5.49 \text{ MeV}``

``12.86 \text{ MeV}``

Net: ``25.71 \text{ MeV}``

$4p^+ + 2e^- → {}^4 \text{He} + 6γ + 2ν$

$M_R ∼ 0.1M_⊙$

$t_⊙ ∼ 10^{10} \text{ yrs}$

Strong nuclear force:

$r_0 ∼ 1.4 × 10^{-15}$

---

$E_c = \frac{1}{4π \mathcal{E}_0} \frac{Z_A Z_B e^2}{r_0} = Z_A Z_B (1.03 \text{ MeV})$

$r_c = \frac{Z_A Z_B e^2}{4π \mathcal{E}_0 E_K}$

$E_K ∼ \frac{3}{2} kT$

$r_\text{close} ≈ \frac{1.57 × 10^{-5} \text{ m}⋅\text{K}}{T}$

$T ∼ 10^7 \text{ K} \implies r_c ∼ 10^{-12} \text{ m}$

---

$M.B. ∼ 10^{-434}$

$\frac{M_⊙}{m_p} = 10^{57}$

$μ ≡ \frac{m_A m_B}{m_A + m_B}$

George Gamow

$p ∼ \exp\left(-\frac{π \sqrt{μ}}{\sqrt{2} ħ} Z_A Z_B \frac{e^2}{\sqrt{E}}\right) → g(E) = e^{-\sqrt{E_G/E}}$

(Gamov Factor)

---

$α = \frac{e^2}{ħc}$

$E_G = (π ∝ Z_A Z_B)^2 2μc^2$

$2p^+$

$E_G ≈ 500 \text{ keV}$

$E_\text{core} ∼ 1 \text{ keV}$

$\implies g(E) ≈ e^{-22} ≈ 10^{-10}$

$σ = \frac{S(E)}{E} e^{-\sqrt{E_G/E}} ∝ λ^2$
"""

# ╔═╡ 82c561a7-3904-4eff-b43e-389ae7a04fa5
md"## 2022-10-31"

# ╔═╡ eb53b4cd-b55c-4dac-b28a-1fe468918344
md"""
### Notes

$σ = \frac{S(E)}{E} e^{-\sqrt{E_G/E}}$

$λ^2 = \frac{h^2}{P^2} = \frac{h^2}{2mE} ∝ \frac{1}{E}$

$σ_{AB} = σ_{BA} = σ$

$R_{AB}$

$ℓ_A = \frac{1}{n_B σ}$

$τ_A = \frac{1}{n_B σ v}$

$R_{AB} = n_A / τ_A = n_A n_B σ v$

$⟨σv_r⟩ = ∫_0^∞ σv_r p(v_r) \,dr$

Classical, non-relativistic gas

M.B.

$p(v_r) \,dr = \left[\frac{μ}{2πkT}\right]^{3/2} e^{\frac{-μ{v_r}^2}{2kT}} (4π {v_r}^2) \,dv_r$

$E = \frac{1}{2} μ{v_r}^2$

$R_{AB} = n_A n_B [\BL] ∫_0^∞ S(E) e^{\left[-\frac{E}{kT} - \sqrt{\frac{E_G}{E}}\right]} \,dE$

$f(x) = \frac{1}{\sqrt{2π} σ} e^{-\frac{(x - x_0)^2}{2σ^2}}$

$E_0 = \left[\frac{E_G(kT)^2}{4}\right]^{1/3}$

$σ_E = \frac{\Delta}{2}$

$\Delta = \frac{1}{\sqrt{3}} (2E_G (kT)^5)^{1/6}$

$S(E) ≃ S_0$

Sun

$E_G = 493 \text{ keV}$

$T = 2×10^7 \text{ K}$

$E_0 = 7.2 \text{ keV}$

$\frac{\Delta}{2} = 4.1 \text{ keV}$

$\frac{dR_\text{AB}}{dT} ≈ \left[\frac{E_G}{4kT}\right]^{1/3} \frac{R_\text{AB}}{T}$

$R_\text{AB} \underset{∼}{∝} T^{\left[\frac{E_G}{4kT_0}\right]^{1/3}}$

$R_{pp} \underset{∼}{∝} T^4$

---

1.

$\text{p} + \text{p} → \text{d} + e^+ + ν \qquad σ ∼ 3.8 × 10^{-22} \text{ keV} ⋅ \text{barns}$

2.

$\text{p} + \text{d} → {}^3 \text{He} + γ \qquad σ ∼ 2.5 × 10^{-4} \text{ keV} ⋅ \text{barns}$

---

$\text{p} + \text{p} ⟷ {}^3 \text{He}$

$Z^0, W^+, W^-$

$\Delta E \Delta t ≥ \frac{ħ}{2}$
"""

# ╔═╡ f3b8e57b-2cc3-4f86-bdf2-0e12644bce29
md"## 2022-11-02"

# ╔═╡ 1f87498e-c2e1-4190-9899-88fb93934163
md"""
### Notes

1.

$\text{p}^+ + \text{p}^+ → \text{d} + \text{e}^+ + ν$

$R_{pp} \underset{∼}{∝} T^4$

$R_{pC} \underset{∼}{∝} T^{18}$

$T ≥ 17 \text{ MK}$

$R_{pC} > R_{pp}$

$S_0 > 0$

$n_c ≈ n_d$

$\text{p}^+ + {}^{12}\text{C} → {}^{13} \text{N} + γ$

$E_G = 32.9 \text{ MeV}$

$\frac{R_{cp}}{R_{dp}} ∼ 10^{-20}$

$\frac{R_{pp}}{R_{dp}} ∼ 10^{-18}$

CNO cycle

1.

$\text{p}^+ + {}^{12}\text{C} → {}^{13}\text{N} + γ$

2.

${}^{13}\text{N} → {}^{13}\text{C} + \text{e}^+ + ν$

3.

${}^{13}\text{C} + \text{p}^+ → {}^{14}\text{N} + γ$

4.

${}^{14}\text{N} + \text{p}^+ → {}^{15}\text{O} + γ$

5.

${}^{15}\text{O} → {}^{15}\text{N} + \text{e}^+ + ν$

6.

${}^{15}\text{N} + \text{p}^+ → {}^{12}\text{C} + {}^4\text{He}$

---

$4\text{p}^+ + {}^{12}\text{C} → {}^{12}\text{C} + {}^4\text{He} + 2\text{e}^+ + 2ν + 3γ + \text{KE}$

$\begin{align*}
\mathcal{E}(r) &= \frac{\text{power generated}}{\text{mass}} = \frac{\text{reaction/second}}{\text{volume}} ⋅ \frac{\text{energy}}{\text{reaction}} ⋅ \frac{1}{\text{density}} \\
&= R_{AB} ⋅ Q ⋅ \frac{1}{ρ} = \mathcal{E}(ρ,T,𝐗,𝐘,𝐙)
\end{align*}$

---

$R_{\text{HeHe}} ∼ 0$

$T ∼ 100 \text{ MK}$
"""

# ╔═╡ cf461abf-f2c5-4fbc-a0cc-4dbb2377403e
md"## 2022-11-04"

# ╔═╡ 25619e72-c9c8-4a80-8627-084798a7a13b
md"""
### Notes

- Hydrostatic Equilibrium

- Mass Continuity

- Equation of State (gas)

- Energy Transport

  - radiative

  - convective

- Energy Generation

  $\frac{dL}{dr} = 4πr^2 ρ(r) \mathcal{E}(r)$

---

Voight-Russel Conjecture

$M,t,𝐗,𝐘,𝐙$

---

Electron-degenerate

---

Red-Giant

---

100 MK

Helium fusion

"Triple Alpha Process"

${}^4 \text{He} + {}^4\text{He} \longleftrightarrow {}^8\text{Be}$

${}^8\text{Be} + {}^4\text{He} \longrightarrow {}^{12}\text{C}^*$

${}^{12}\text{C}^* \longrightarrow {}^{12}\text{C} + 2γ$

$τ_{1/2} ∼ 10^{-16} \text{ s}$

Hoyle State

$Q_{3α} ∼ 7.3 \text{ MeV}$

$Q_{pp} ∼ 21 \text{ MeV}$

---

"planetary nebula"

---

$M < 3M_⊙$

$3M_⊙ < M < 8M_⊙$

$M > 8M_⊙$

$\text{H} → \text{He}$

$\text{He} → \text{C}$

$\text{C} → \text{O}$

$\text{O} → \text{Ne}$

$\text{Ne} → \text{Si}$

$\text{Si} → \text{Fe}$
"""

# ╔═╡ e23c1634-71c9-47d4-93ba-579b9c684cb3
md"## 2022-11-07"

# ╔═╡ 2ef65ff3-136b-4a40-b7e7-dae5079362d1
md"""
### Notes

Si: ``T ≥ 3 \times 10^9 \text{ K}``

"Silicon Melting"

---

White Dwarf: ``M < 8M_⊙``

Neutron Stars: ``M > 8M_⊙``

---

Quantum Effects

λ - de Broglie wavelength

$λ = \frac{⟨d⟩}{2} = \frac{h}{p} = \frac{h}{\sqrt{2mE}} = \frac{h}{\sqrt{3mkT}}$

$ρ ≈ \frac{m}{(d/2)^3} = \frac{8m_p(3m_e kT)^{3/2}}{h^3}$

$p ∝ T^{3/2}$

---

Degenerate Electron Gas

phasespace ``(\Delta p)^3 (\Delta V)``

$dN = g(E) f(E) \frac{dp^3 dV}{h^3}$

F.D.

$dN = (2s + 1)\left(\frac{1}{e^{(E - μ(T))/kT} + 1}\right) \frac{dp^3 dV}{h^3}$

$e^- \qquad T → 0 \qquad μ(T) → E_F$

$E_F = \frac{ħ^2}{2m} \left(\frac{3πN}{V}\right)^{2/3} ∝ n^{2/3}$

$kT ≪ E_F$

$n_e = \frac{8π}{3h^3} P_F^3$

$E_F → P_F$

$P = ∫_0^∞ dN(p) \frac{P_x V_x}{dV} \, dp = \frac{1}{3} ∫_0^∞ n(p) pv \,dp$

M.B. → ``P = nkT``

F.D. non-relativistic

$P_e = \left(\frac{3}{8π}\right)^{2/3} \frac{ħ^2}{5m_e} n_e^{5/3}$

Average proton count per particle:

$n_e = \bar{𝐙}n^+ = \bar{𝐙} \frac{ρ}{Am_p}$

---

Equation of State (non-relativistic ``e^-``-degenerative gas)

$P_E = \left(\frac{3}{π}\right) \frac{h^2}{20m_e m_p^{5/3}} \left(\frac{𝐙}{A}\right)^{5/3} ρ^{5/3}$

---

$1 M_⊙$

$\frac{P_e}{P_{th}} ∼ 10^2$
"""

# ╔═╡ 493a1583-67e1-4ef0-8f9d-97646e30afa8
md"## 2022-11-0"

# ╔═╡ 2543307c-2308-4a95-b396-c1e2cb1eeaa4
md"""
### Notes

$P_e ∝ \left(\frac{Z}{A}\right)^{5/3} ρ^{5/3}$

$r_{WD} = (2.3 × 10^9 \text{ m}) \left(\frac{Z}{A}\right)^{5/3} \left(\frac{M}{M_⊙}\right)^{-1/3}$

$r ∝ M^{-1/3}$

Ultra-relativistic ``v ∼ c``

$P_e = \left(\frac{3}{8π}\right)^{1/3} \frac{hc}{4m_p^{4/3}} \left(\frac{Z}{A}\right)^{4/3} ρ^{4/3}$

$P_e ∝ ρ^{4/3}$
"""

# ╔═╡ 05b68c5c-1583-425a-874d-703bfc7d1554
md"## 2022-11-11"

# ╔═╡ db11656e-7668-4b32-a397-02875be7e0af
md"""
### Central Pressure of a White Dwarf

The condition of hydrostatic equilibrium requires a central pressure, regardless of source, of ``\displaystyle P_c ∼ \frac{GM^2}{R^4}``.
Find the (approximate) central pressure of white dwarf Sirius B (``M = 1.02 M_⊙``, ``R = 0.0084 R_⊙``.)?
"""

# ╔═╡ b7e462a3-e709-485b-8d10-8a8d5e5e2f05
let
	M = 1.02u"Msun"
	R = 0.0084u"Rsun"
	Psun = 26.5u"PPa" |> u"Pa"
	Pc = G * M^2 / R^4 |> u"atm" |> u"Pa"
end

# ╔═╡ 0f0d27b3-12ec-4c56-b41f-ba2ca4d3b98d
md"""
### Notes

Non-relativistic

$P_e ∝ ρ^{5/3}, \quad \text{ no } T$

Ultra-relativistic

$P_e ∝ ρ^{4/3}, \quad \text{ no } T$

---

$r ∝ M^{-1/3}$

Virial Theorem

$\bar{P}V = -\frac{1}{3} E_\text{gr}$

$P_e V = -\frac{1}{3} \left(-\frac{3}{5} \frac{GM^2}{R}\right)$

$\left(\frac{3}{8π}\right)^{1/3} \frac{hc}{4m_p^{4/3}} \left(\frac{Z}{A}\right)^{4/3} ρ^{4/3} V = \frac{1}{5} \frac{GM^2}{R}$

$ρ = \frac{M}{V}$

$V = \frac{4}{3} π R^3$

$M^{2/3} = \left(\frac{3}{8π}\right)^{1/3} \left(\frac{5}{4}\right)\left(\frac{3}{4π}\right)^{1/3} \frac{hc}{m_p^{4/3}} \left(\frac{Z}{A}\right)^{4/3}$

$M_C = 0.236 \left(\frac{Z}{A}\right)^2 \left(\frac{hc}{Gm_p^2}\right)^{3/2} m_p$

Chandrasekhar Limit

$M_C ∼ 1.4 M_⊙$

Type Ia Supernova - happens at Chandrasekhar Limit

---

High Mass

$≳ 8M_⊙$

``e^-``-degenerate

$e^- + p^+ → n^0 + ν$

$n^0 → e^- + p^+ + \bar{ν}$

$E_F(e^-) + E_F(p^+) = E_F(n^0)$

$P_F = \left[\frac{3n}{8π}\right]^{1/3} h$

$n_e ∼ n_p$

$E_F ≈ mc^2 + \frac{P_F^2}{2m}$

$E_F(e^-) ≈ P_F(e^-) c$

$n_e = n_p ≈ \frac{n_n}{200}$

$ρ = 2 \times 10^{17} \frac{\text{kg}}{\text{m}^3}$

"Neutron Star" - basically a giant nucleus

"Quark Star"
"""

# ╔═╡ c6ff5d11-31a9-4223-ab50-29c2798b238b
md"## 2022-11-14"

# ╔═╡ cc0b873e-03f6-41f8-9f08-fc0a92db8374
md"""
### Notes

Neutron Star: ``1.4 M_⊙ \;—\; 2.2 M_⊙``

$\vec{B} ⋅ \text{flux}, \quad \vec{L} \text{ conserved}$

$|\vec{B}| ≈ 10^6 \text{ T}$

$\vec{L} = \frac{1}{2} I ω^2 = \frac{1}{2} aMR^2 ω^2 ∝ R^2 ω^2$

$T ∼ 2 \times 10^{-3} \text{ s}$

Pulsars

---

Low Mass → WD → Type Ia

High Mass → (Neutron → +Neutron → kilonova, Nothing, Black Hole ← Gamma-Ray Burst (GRB))

Type-II

Type Ib?
"""

# ╔═╡ 701fca7f-6179-49f8-9fe5-f3cbbd5986c3
md"""
### Neutrino Luminosity of a Type II SN


Around ``10^{15}`` Solar neutrinos pass through your body each second.
At what distance from a Type II supernova would the total number of supernova neutrinos passing through your body equal this amount?
(A Type II SN emits around ``10^{57}`` neutrinos in total.)
Compare this distance with the radius of the Milky Way galaxy, ``∼50{,}000`` light-years.

_**Solution.**_

$10^{15} = \frac{10^{57}}{4πd^2}$

$d = \sqrt{\frac{10^{57}}{4π10^{15}}} = \sqrt{10^{41}} = 10^{20.5} ∼ 3 \times 10^{20} \text{ m} = 30{,}000 \text{ ly} < 50{,}000 \text{ ly}$
"""

# ╔═╡ 7a1af87f-103a-4a0a-abc2-2871245a3f71
let
	rsun = 1e15
	rnva = 1e57

	d = sqrt(rnva / (4π * rsun))u"m" |> u"ly"
end

# ╔═╡ d142394e-e6b7-4f6e-a8f2-7c1d837d958e
md"""
### Solar Neutrino Problem

$ν_e \qquad f_{ν_e} ∼ \frac{1}{3}$
"""

# ╔═╡ 15f37523-516e-4814-b3d5-c4fc2e895517
md"## 2022-11-16" 

# ╔═╡ a0014455-9d1d-4984-9152-8ec8025439d0
md"""
### Notes

``2.2 M_⊙`` → ``n``-star

``∼5–10M_⊙``

``2.2–20 M_⊙`` - "Solar Mass", "Intermediate Mass"

``10^6–10^9 M_⊙`` → "Supermassive"

``v_\text{esc} ≥ c``?

M87

AGN

Sgr A*

``4 \times 10^6 M_⊙``

M87*

``M ∼ 6 \times 10^9 M_⊙``

$\sqrt{\frac{2GM}{R}} ≥ c$

$r = \frac{2GM}{c^2} = (3 \text{ km}) \frac{M}{M_⊙}$

$r_s ≡ \frac{2GM}{c^2}$

Schwarzschild Radius

General Relativity

``T_{μν} ≡ \text{energy-momentum}``

``g_{μν} = \begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 0 & 0 & 0 & -1 \end{bmatrix}``

Minkowski Metric

"S.R. metric"

→ spacetime is flat
"""

# ╔═╡ f99fd2fd-6596-48f3-bad7-301178073b2c
md"## 2022-11-18"

# ╔═╡ 6efbc94a-ca9c-442b-8b7b-d1921d7cfb85
md"""
### Notes

G.R.

Einstein Field Equation

$R_{μν} - \frac{1}{2} Rg_{μν} + \Lambda g_{μν} = \frac{8πG}{c^4} T_{μν}$

- ``R_{μν}`` - Ricci curvature tensor

- ``R`` - Solar curvature

- ``g_{μν}`` - metric tensor

- ``\Lambda`` - cosmological constant

- ``T_{μν}`` - energy momentum tensor

10 coupled partial Differential Equations (non-linear)

$\begin{bmatrix}
a & b & c & d \\
e & f & g & h \\
i & j & k & ℓ \\
m & n & o & p
\end{bmatrix}$

Some useful exact solutions:

Minkowsi S.R.

$g_{μν} = \begin{bmatrix} -1 & 0 & 0 \\ 0 & ⋱ & 0 \\ 0 & 0 & -1 \end{bmatrix}$

Schwarzschild

$g_{μν} = \begin{bmatrix} -\left(1 - \frac{r_s}{r}\right) & 0 & 0 \\ 0 & \frac{1}{\left(1 - \frac{r_s}{r}\right)} & 0 \\ 0 & 0 & r^2 \end{bmatrix}$

$r_s = \frac{2GM}{c^2}$

---

- Dark Energy ``(\Lambda)``

---

- ``K_\text{err}`` (rotating BH)

- ``K_{\text{err}}``-Newman (rotatin, charged)

``M, \vec{L}, Q`` "no hair theorem"

- FLRW

  $(ds)^2 = g_{μν} g^{μν} = (cdt)^2 - (dx)^2 - (dy)^2 - (dz)^2$

  $\begin{bmatrix} cdt \\ dx \\ dy \\ dz \end{bmatrix}$

  $(ds)^2 = \left(1 - \frac{r_s}{r}\right) (cdt)^2 - \left(1 - \frac{r_s}{r}\right)^{-1} (dr)^2 - (r \,dθ)^2 - (r\sin{θ}\,dθ)^2$

- proper time ``\displaystyle dτ ≡ \frac{ds}{c}``

clock at rest ``\displaystyle dτ = \left(1 - \frac{r_s}{r}\right)^{1/2} dt``

$dτ = \left(1 - \frac{2GM}{rc^2}\right)^{1/2} dt$

$\frac{λ}{λ_0} = \left(1 - \frac{r_s}{r}\right)^{-1/2}$

Gravitational Redshift

---

freely falling objects

``ds = 0``

radial motion

``ds = 0, \;dθ = 0,\; dϕ = 0``
"""

# ╔═╡ ac776c65-e6dd-4c38-a814-20236d7bb244
md"## 2022-11-28"

# ╔═╡ d2ee9c91-ba8b-4475-9458-67bd7bf1711e
md"""
### Notes

"No-Hair theorem"

M,Q,S

only monopoles

gravity wave ≠ gravitational waves

---

geodesies

for m = 0 freefalling

ds = 0

43''/century - Mercury

8.6''/century - Venus

3.8''/century - Earth

1.4''/century - Mars

---

Gravitational Lensing

Einstein Ring

$ma = \frac{1}{4πε_0}\frac{qQ}{r^2}$
"""

# ╔═╡ d4e56ac0-a528-44a7-aca0-335983f363ae
md"## 2022-11-30"

# ╔═╡ 6678642d-da1f-4580-a067-e4e1784ccf2e
md"""
### Notes

Cosmology

1929 - Hubble

Redshift

$z = \frac{λ - λ_0}{λ_0}$

$z + 1 = \frac{λ'}{λ_0}$

$v_r = zc = H_0 d$

Hubble-La Maître Law

Cosmological Principle

- Homogeneous

- Isotropic

``H_0 = 70 ± 5 \frac{\text{km/s}}{\text{Mpc}}``

``\frac{1}{H_0}`` - "Hubble Time" ≃ 14 ± 1 Gyr

"Hubble Flow"

``r(t) = a(t) r_0``

``a(t)`` = scale factor

``a(t) = 1`` today

Hubble Parameter

$H(t) ≡ \frac{\dot{a}(t)}{a(t)}$

$H_0 = \frac{\dot{a}(0)}{a(0)} = \dot{a}(0)$

Friedmann Equation

$\left(\frac{\dot{a}}{a}\right)^2 = \frac{8πG}{3c^2} u(t) - \frac{\kappa c^2}{r_{co}^2} \frac{1}{a(t)^2} + \frac{\Lambda}{3}$

``u(t)`` = energy density of space

``κ``: curvature ``(-1,0,+1)``

``r_{co}``: curvature (radius)

``\Lambda``: cosmological constant

``κ = 0`` : flat

``κ = -1`` : open

``κ = +1`` : closed

$u_{\Lambda} = \frac{c^2 \Lambda}{8πG}$

Flat

$u_c = u_\text{rad} + u_\text{mass} + u_{\Lambda} = \frac{3H^2(t) c^2}{8πG}$

$u_{co} = 5200 \frac{\text{MeV}}{\text{m}^3}$

$\Omega(t) ≡ \frac{u(t)}{u_c(t)}$

$\Omega_r(t) ≡ \frac{u_\text{rad}(t)}{u_c(t)}$

$\Omega_m(t) ≡ \frac{u_\text{mass}(t)}{u_c(t)}$

$\Omega_\Lambda(t) ≡ \frac{u_\Lambda(t)}{u(t)}$

$\Omega_0 ≡ \Omega(0)$

mesaurements T. 24.1

$\Omega_{r,0} = 8.4 \times 10^{-5}$

$\Omega_{m,0} = 0.30$

$\Omega_{\Lambda,0} = 0.70$

$\Omega_0 = 1.00000$
"""

# ╔═╡ 5fd41eb7-aee1-41a7-a0e5-0509f5da3150
md"## 2022-12-02"

# ╔═╡ 3b468dc6-32a6-473e-9078-99d81808a6ae
md"""
### Notes

FLRW Metric

$ds^2 = -c^2 dt^2 + a(t)^2 \left(\frac{dr^2}{1 - κr^2} + r^2(dθ^2 + \sin^2{θ} \,dϕ^2)\right)$


$r(t) = a(t) r_0$

``r(t)`` - measured "proper"

``r_0`` - comoving

$\Omega_r + \Omega_m + \Omega_\Lambda = \Omega$

"Flatness Problem" ``\Omega = 1``

"Inflation" ``κ = 0``

$\frac{u(t)}{u_c(t)}$

``0 < a(t) < 0.00028`` "radiation dominated"

Inflation ↑, rad ↓

``0.00028 < a(t) < 0.75`` "mass dominated" slowed

``0.75 < a(t) < 1`` "Λ-dominated" increases expansion

$v_r = cz$

$z > 1$
"""

# ╔═╡ 5923390f-e472-4dfd-86c8-e26122a4cc91
md"## 2022-12-05"

# ╔═╡ b57ec0d0-e988-4f35-9902-3fd544dc26ee
md"""
### Notes

$H_0 = \frac{\dot{a}(0)}{a(0)}$

``\Omega_r, \Omega_m`` - decelerate

``\Omega_\Lambda`` - accelerates

``\Omega_m = 0.3``

``\Omega_\Lambda = 0.7``

George Gamow

``T ∼ 3000 \text{ K}`` - Point of the universe that light first escaped

``T_\text{CMB} ∝ \frac{1}{a(t)}``

``T_\text{CMB,0} ∼ 3 \text{ K}``

``T = 2.7 \text{ K}``

Big Bang Nucleosynthesis

``H ∼ 75\%``

``\text{He-4} ∼ 24\%``

``d, \text{He-3}, \text{Li-7}``

GUT (Grand Unified Theory) → TOE (Theory of Everything)

Olbers Paradox

``10^{100}`` - googol number of years ⟹ "Heat Death"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"
UnitfulAstro = "6112ee07-acf9-5e0f-b108-d242c714bf9f"

[compat]
PhysicalConstants = "~0.2.3"
Unitful = "~1.12.1"
UnitfulAstro = "~1.2.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "de435964d96ef59244d393be26ca17c3cbf32807"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "e7ff6cadf743c098e08fca25c91103ee4303c9bb"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.6"

[[deps.CommonSolve]]
git-tree-sha1 = "9441451ee712d1aec22edad62db1a9af3dc8d852"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.3"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "aaabba4ce1b7f8a9b34c015053d3b1edf60fa49c"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.4.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "fb21ddd70a051d882a1686a5a550990bbe371a95"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.4.1"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Measurements]]
deps = ["Calculus", "LinearAlgebra", "Printf", "RecipesBase", "Requires"]
git-tree-sha1 = "12950d646ce04fb2e89ba5bd890205882c3592d7"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.8.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.PhysicalConstants]]
deps = ["Measurements", "Roots", "Unitful"]
git-tree-sha1 = "cd4da9d1890bc2204b08fe95ebafa55e9366ae4e"
uuid = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
version = "0.2.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
deps = ["SnoopPrecompile"]
git-tree-sha1 = "d12e612bba40d189cead6ff857ddb67bd2e6a387"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.1"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Roots]]
deps = ["ChainRulesCore", "CommonSolve", "Printf", "Setfield"]
git-tree-sha1 = "a3db467ce768343235032a1ca0830fc64158dadf"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "2.0.8"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "StaticArraysCore"]
git-tree-sha1 = "e2cc6d8c88613c05e1defb55170bf5ff211fbeac"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "1.1.1"

[[deps.SnoopPrecompile]]
git-tree-sha1 = "f604441450a3c0569830946e5b33b78c928e1a85"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StaticArraysCore]]
git-tree-sha1 = "6b7ba252635a5eff6a0b0664a41ee140a1c9e72a"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Unitful]]
deps = ["ConstructionBase", "Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "bdc60e70c8a2f63626deeb5c177baacfc43f8a59"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.12.1"

[[deps.UnitfulAngles]]
deps = ["Dates", "Unitful"]
git-tree-sha1 = "d6cfdb6ddeb388af1aea38d2b9905fa014d92d98"
uuid = "6fb2a4bd-7999-5318-a3b2-8ad61056cd98"
version = "0.6.2"

[[deps.UnitfulAstro]]
deps = ["Unitful", "UnitfulAngles"]
git-tree-sha1 = "05adf5e3a3bd1038dd50ff6760cddd42380a7260"
uuid = "6112ee07-acf9-5e0f-b108-d242c714bf9f"
version = "1.2.0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"
"""

# ╔═╡ Cell order:
# ╟─cf75352c-23ce-11ed-11bf-49ef8ee9e3c4
# ╟─a6846707-8be1-4964-a641-1b0a9ca24928
# ╟─02846929-9c37-48db-927f-72c1fdc34a43
# ╟─f7891f0b-5995-42e2-b0de-eb2370c35acc
# ╟─dd6aa32f-9fd2-4c6c-a6ec-19c308b0edb9
# ╟─ed5c1490-bd9b-40d4-bb40-e37db7a26644
# ╟─23630795-bf42-4b3f-99fa-2091371881b7
# ╟─a55c0f91-fb77-479d-ab4d-8cacb161b0f5
# ╠═186f95ae-0177-4a2f-85d1-03982c468427
# ╟─a391d1c8-7c64-4638-b28d-145e917f45a7
# ╟─1efd34cc-2321-4a70-9c04-548a3c9b550f
# ╟─33640102-c99d-4020-9a96-6cf6f78ad36c
# ╟─e5f7aa20-462e-478f-b78c-92fd147c1d80
# ╟─708f3c9f-51ae-44d6-9748-cb8fb57ee68e
# ╟─29a0b64b-27a9-4f91-bd09-b95b20fa208c
# ╟─997fa881-c452-4a32-a2fd-c29bc15aa1d2
# ╟─0eb5cb3d-b895-4176-809c-04cc79ded20b
# ╠═f7cceb40-587a-438a-91de-db0ab56c06c2
# ╟─77d10fa6-b288-4b9d-a577-8773d94a944a
# ╟─ae9d4b3c-08fb-4be7-a97a-f7c823d3e4c4
# ╟─c08d1545-9a61-445f-b403-719047b996ca
# ╟─7b2b1108-4e11-41e1-8a98-273626dabdf7
# ╟─23c81e6e-725c-4b88-833a-18918067b97b
# ╟─7caead97-a193-4824-b7fb-dcc2caa93aaa
# ╟─51e16aef-17ea-4f5a-8f90-0e9e48083387
# ╟─ea44a2dd-bd56-45dc-ac04-f25d60bc53a5
# ╟─0a786f16-6e55-4b1b-bc27-04f7f3463e3b
# ╟─747d531d-0e18-4fa1-812b-b1896318ff26
# ╟─a2ebd2f3-a993-48d7-ba50-9181b8f74567
# ╟─4b0984cd-ffa6-4979-8a40-6d105777fd3b
# ╟─fdedfed2-1ebf-4a47-8e38-40efd955dd8b
# ╟─7235caba-cbf2-46ed-910d-61845959d66a
# ╟─890d27d5-acbf-4e54-a8c5-775c0038b80e
# ╟─21af39b6-ab7e-47b8-bc74-c33720d299d5
# ╟─03e2972e-9d30-4081-be29-fe8847fa6224
# ╟─5ccf409a-b110-4ba4-9391-a4985450e8bc
# ╟─6c52e70f-2e56-4912-8df2-6f499ea6daa5
# ╟─26af5f89-7d48-43da-9cd7-2b2571b58ea6
# ╟─3c884992-7c55-4842-b24f-879746e11faf
# ╟─428d35f3-031e-4c3e-b738-93c6bf99aff8
# ╟─947ae4c3-7435-48c0-bffc-9a40f5d10083
# ╟─893194c6-faff-45f9-b890-e11a7f763279
# ╟─b82ea92a-948d-46be-8787-2e409a277690
# ╟─1ba7ae60-02d4-4c63-a604-29225dc3d26f
# ╟─296a0740-3130-41b1-b5f2-6f071f708f14
# ╟─ab8e1963-e32d-4e77-a9a7-b91395d5d71f
# ╟─b4a7bf99-2ebb-41f6-88a0-731116087943
# ╟─65dcbc54-55eb-4102-abf1-65dc4880c171
# ╟─1d005654-7e57-4c0b-a15d-01df61aca338
# ╟─2b552a90-0331-4901-99ef-88602c17e7a0
# ╟─f597ff64-9c63-45ba-b60b-d8b9b5c23277
# ╟─0bd75df7-c899-4276-a85d-486bb3f0d0d2
# ╠═f560f493-b3e4-4f10-971a-e84abfdef992
# ╟─b8542265-0074-41d8-95ad-f4c98e6c653f
# ╟─5b9fa922-79a2-41b7-8e34-4b06738781b5
# ╟─17489f9d-3333-4ad6-a8df-be77d815d18e
# ╟─22364859-0378-4982-974b-dc0de0862151
# ╟─516f6dd5-8137-418d-a86f-85e42ee31211
# ╟─9e1933b7-4b89-41bb-83f5-ad3d0357ed74
# ╟─180b9b58-6bb8-4ac7-bdd2-d34ab3b3656b
# ╟─a3d31ab8-4711-4bb1-acbf-1981db2a459d
# ╟─32f97a2f-b402-4cbf-96e1-ab8df8566486
# ╟─d402b71b-2d72-456a-b000-32a72d329f9a
# ╟─cff732bd-c45c-448a-a4d1-0c387d2cf9d4
# ╟─4be9b808-915c-4c4e-b658-78efcae7f73b
# ╟─91e891af-a835-4fe3-95f2-efd2ce5b1db1
# ╟─341c70ed-bb9c-4a6e-a74b-f2cb3b197765
# ╟─8a2b2973-fba7-42a9-b1fc-f8c725997e6e
# ╟─0c7cb557-f1f0-4e86-9b93-117d33872aea
# ╟─73dd7422-a363-444e-b8a8-28268c251864
# ╟─0148ee47-9309-4d13-b59c-8f3c39eabb5b
# ╟─74344902-d399-4b10-a5f3-7871f9b458c2
# ╟─5773572f-7c89-419f-98fa-45f6480a9046
# ╟─e650fea2-21cd-44ed-80c4-d9caa67125f2
# ╟─e4a2877a-7d0f-4462-b837-96d09d4d4cc4
# ╟─c40bd5e3-a6ef-4e10-a5ac-d2baf9cab055
# ╟─e44e87ab-fd74-4f1f-8709-0d93b4c3616e
# ╟─47a2f37c-f5c9-4d88-b808-21a4b2d1766e
# ╟─f4991c0d-d760-451b-a4bd-64d75d0a0f29
# ╟─ca3361e7-63b6-4b0f-aa6c-f61041a70374
# ╟─8d8538d8-d6b6-47df-83a8-e841a8959d72
# ╟─890f6474-97ea-420b-a97c-f1e743db8021
# ╟─c2ac823e-eddf-4a0d-9831-cf167da68e02
# ╠═4f1f50f3-7f1c-4db4-b466-66e1a2b986d7
# ╟─66dcdc21-f01f-42d5-a488-e109f300b236
# ╟─735f1db2-b2c8-4c73-b166-efb5438981d3
# ╟─8ef5eda7-8b99-41bf-b44a-ef3d069a3a1c
# ╠═3b1337a0-9cf9-4518-bb38-34b731fcb618
# ╟─c32a924e-63ae-4495-8940-e56d917c359f
# ╟─64bf3867-2105-4a17-bef1-9e124554ad6e
# ╟─3e21051b-8206-4002-b5b2-be35870d4621
# ╟─3e7fd13c-dcf2-4346-9bd7-adf366d422c8
# ╟─188c9e9c-6e87-46b4-bd51-42f263aac213
# ╟─82c561a7-3904-4eff-b43e-389ae7a04fa5
# ╟─eb53b4cd-b55c-4dac-b28a-1fe468918344
# ╟─f3b8e57b-2cc3-4f86-bdf2-0e12644bce29
# ╟─1f87498e-c2e1-4190-9899-88fb93934163
# ╟─cf461abf-f2c5-4fbc-a0cc-4dbb2377403e
# ╟─25619e72-c9c8-4a80-8627-084798a7a13b
# ╟─e23c1634-71c9-47d4-93ba-579b9c684cb3
# ╟─2ef65ff3-136b-4a40-b7e7-dae5079362d1
# ╟─493a1583-67e1-4ef0-8f9d-97646e30afa8
# ╟─2543307c-2308-4a95-b396-c1e2cb1eeaa4
# ╟─05b68c5c-1583-425a-874d-703bfc7d1554
# ╟─db11656e-7668-4b32-a397-02875be7e0af
# ╠═b7e462a3-e709-485b-8d10-8a8d5e5e2f05
# ╟─0f0d27b3-12ec-4c56-b41f-ba2ca4d3b98d
# ╟─c6ff5d11-31a9-4223-ab50-29c2798b238b
# ╟─cc0b873e-03f6-41f8-9f08-fc0a92db8374
# ╟─701fca7f-6179-49f8-9fe5-f3cbbd5986c3
# ╠═7a1af87f-103a-4a0a-abc2-2871245a3f71
# ╟─d142394e-e6b7-4f6e-a8f2-7c1d837d958e
# ╟─15f37523-516e-4814-b3d5-c4fc2e895517
# ╟─a0014455-9d1d-4984-9152-8ec8025439d0
# ╟─f99fd2fd-6596-48f3-bad7-301178073b2c
# ╟─6efbc94a-ca9c-442b-8b7b-d1921d7cfb85
# ╟─ac776c65-e6dd-4c38-a814-20236d7bb244
# ╟─d2ee9c91-ba8b-4475-9458-67bd7bf1711e
# ╟─d4e56ac0-a528-44a7-aca0-335983f363ae
# ╟─6678642d-da1f-4580-a067-e4e1784ccf2e
# ╟─5fd41eb7-aee1-41a7-a0e5-0509f5da3150
# ╟─3b468dc6-32a6-473e-9078-99d81808a6ae
# ╟─5923390f-e472-4dfd-86c8-e26122a4cc91
# ╟─b57ec0d0-e988-4f35-9902-3fd544dc26ee
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
