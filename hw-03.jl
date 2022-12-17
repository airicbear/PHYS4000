### A Pluto.jl notebook ###
# v0.19.12

using Markdown
using InteractiveUtils

# ╔═╡ 6769e772-44dd-11ed-30e0-5beb62267e68
begin
	using PhysicalConstants.CODATA2018: G, k_B, h, c_0, σ
	using Unitful
	using UnitfulAstro
md"""
# Homework 3

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ October 10, 2022
"""
end

# ╔═╡ dc4ce9e0-31f3-4fe6-8ee0-51a708d6f2d1
let
md"""
# Problem 1 (R&P 12.2)

The star 51 Pegasi has a mass ``M_A = 1.06 M_⊙``.
Its radial velocity varies sinusoidally with a period ``P = 4.23 \text{ days}`` and an amplitude ``v_A \sin{i} = 56 \text{ m s}^{-1}``.
What is ``M_B \sin{i}`` of the exoplanet causing these velocity variations?
"""
let
let
	MA = 1.06u"Msun" |> u"kg"
	P = 4.23u"d" |> u"s"
	vasini = 56u"m/s"
	MBsini = ((MA^2 * P) / (2π * G))^(1/3) * vasini |> u"Mearth"
end
md"""
### Problem 1

Let ``M_A = 1.06M_⊙`` be 51 Pegasi's mass and its radial velocity varies sinuisoidally with a period ``P = 4.23`` days and amplitude ``v_A \sin{i} = 56 \text{ m/s}^{-1}``.
Then the ``M_B \sin{i}`` of the exoplanet causing these velocity variations is

$\begin{align*}
M_B \sin{i} &≈ 11M_⊕ \left(\frac{M_A}{1 M_⊙}\right)^{2/3} \left(\frac{P}{1 \text{ yr}}\right)^{1/3} \left(\frac{v_A \sin{i}}{1 \text{ m s}^{-1}}\right) = 145 M_⊕
\end{align*}$
"""
end
end

# ╔═╡ bea1bba4-3b8c-4dbd-b669-43468c99bafc
let
md"""
# Problem 2 (R&P 12.3)

What fractional decrease in flux, ``δF/F``, would be caused by an Earth-like planet transiting a Sun-like star?
If a transit of the Earth across the Sun were viewed by a very distant observer in the Earth's orbital plane, how long would the transit last?
"""
let
let
	Re = 1u"Rsun" |> u"km"
	ve = 30u"km/s"
	Δt = (2*Re) / ve |> u"hr"
end
md"""
### Problem 2

The fractional decrease in flux that would be caused by an Earth-like planet ``(R_⊕ = 6378.1 \text{ km})`` transiting a Sun-like star ``(R_⊙ = 655700 \text{ km})`` is 

$\frac{δF}{F} = \left(\frac{R_⊕}{R_⊙}\right)^2 = 8.4050 × 10^{-5}$

If the transit of the Earth ``(v_⊕ = 30 \text{ km/s})`` across the Sun were viewed by a very distant observer in the Earth's orbital plane, the transit would last

$Δt = \frac{2R_⊙}{v_⊕} = 12.88 \text{ hours}$
"""
end
end

# ╔═╡ 8f5554ad-9ae0-476a-9dd4-1959e3fe2825
let
md"""
# Problem 3 (R&P 12.4)

Compute the ratio of Jupiter's luminosity to the Sun's luminosity, ``L_{ν,\text{Jup}} / L_{ν,⊙}``, at a wavelength ``λ = 20 \;μ\text{m}``.
"""
let
let
	λ = 20u"μm"
	ν = c_0 / λ |> u"Hz"
	
	Rsun = 1u"Rsun"
	Tsun = 5778u"K"
	Isun = 2k_B*Tsun*ν^2 / c_0^2
	Rjup = 0.1u"Rsun"
	Tjup = 100u"K"
	Ijup = 2h * ν^3 * exp(-h*ν / (k_B * Tjup)) / c_0^2

	Ljup = Rjup^2 * Ijup
	Lsun = Rsun^2 * Isun

	Ljup / Lsun
end
md"""
### Problem 3

The ratio of Jupiter's luminosity ``(T_\text{Jup} = 0.026 T_⊙)`` to the Sun's luminosity at a wavelength ``λ = 20 \;μ\text{m}``, or frequency ``ν = c/λ = 1.5 × 10^{13} \text{ Hz}``, is

$\frac{L_{ν,\text{Jup}}}{L_{ν,⊙}} = \frac{R_\text{Jup}^2}{R_⊙^2} \frac{I_{ν,\text{Jup}}}{I_{ν,⊙}}$

Since for the Sun, we have ``hν ≪ kT_⊙``, we use the Rayleigh-Jeans approximation:

$I_{ν,⊙} ≈ \frac{2kT}{c^2} ν^2 = 4.0 × 10^{-10}$

Since for Jupiter, we have ``hν ≫ kT_\text{Jup}``, we use the Wien approximation:

$I_{ν,\text{Jup}} ≈ \frac{2hν^3}{c^2} e^{-hν / kT} = 4.1 × 10^{-13}$

Thus, the ratio of Jupiter's luminosity to the Sun's luminosity is

$\frac{L_{ν,\text{Jup}}}{L_{ν,⊙}} = 9.4 × 10^{-7}$
"""
end
end

# ╔═╡ 91a3b94c-8ded-45b2-8532-1a2474becabd
let
md"""
# Problem 4

A good starting point for any hypothesis is to assume a proven case is typical, even if the sample size is small.
Assume Earth is a typical life-supporting planet (sample size = 1), and that we can "copy-paste" Earth into orbits of our choosing around other stars.
What would be the radius of a circular orbit around the stars Vega  (T = 9600 K, R ~ 2.6 ``R_⊙``) and Proxima Centauri (T = 3000 K, R = 0.15 ``R_⊙``) that would give the same equilibrium temperature that Earth currently has around our Sun?
Use an albedo of 0.3 for Earth, and ignore the Earth's atmosphere.*

*Essentially, this assumes the Earth's atmosphere will behave the same in every situation. We'll ignore the pesky fact that Vega's UV emission might strip any planet of its atmosphere, and that Proxima Centauri puts out a low amount of visible light which would weaken the greenhouse effect...

"""
let
let
	Rsun = 1u"Rsun"
	r = 1u"AU" |> u"Rsun"
	Tsun = 5778u"K"
	A = 0.3
	Tp = 290u"K"
	TVega = 9600u"K"
	RVega = 2.6u"Rsun"
	TProx = 3000u"K"
	RProx = 0.15u"Rsun"
	:a=>(TVega / Tp)^2 * RVega / 2 * (1 - A)^(1/2) |> u"AU",
	:b=>(TProx / Tp)^2 * RProx / 2 * (1 - A)^(1/2) |> u"AU"
end
md"""
### Problem 4

The equilibrium temperature of the Earth (with albedo ``A_⊕ = 0.3``) around our Sun is ``T_p ≈ 290 \text{ K}``.
Then the radius of a circular orbit of Earth around Vega ``(T_\text{Vega} = 9600 \text{ K}, R_\text{Vega} = 2.6R_⊙)`` would be

$a = \left(\frac{T_\text{Vega}}{T_p}\right)^2 \frac{R_\text{Vega}}{2} (1 - A_⊕)^{1/2} = 5.5 \text{ AU}$

and the radius of a circular orbit of Earth around Proxima Centauri ``(T_\text{Prox} = 3000 \text{ K}, R_\text{Prox} = 0.15R_⊙)`` would be

$a = \left(\frac{T_\text{Prox}}{T_p}\right)^2 \frac{R_\text{Prox}}{2} (1 - A_⊕)^{1/2} = 0.031 \text{ AU}$
"""
end
end

# ╔═╡ 5e6fdf29-2292-408d-b7fa-d6292c267b63
let
md"""
# Problem 5 (R&P 13.4)

The Luyten 726-8 star system contains two stars, one with apparent magnitude ``m = 12.5`` and the other ``m = 12.9``.
What is the combined apparent magnitude of the two stars?
"""
let
let
	m1 = 12.5
	m2 = 12.9
	-2.5log10(10^(-0.4m1) + 10^(-0.4m2))
end
md"""
### Problem 5

The combined apparent magnitude ``m`` of the Luyten 726-8 binary star system with magnitudes ``m_1 = 12.5`` and ``m_2 = 12.9`` and total flux ``F`` is

$m = -2.5 \log_{10}{F} = -2.5 \log_{10}\left(10^{-0.4m_2} + 10^{-0.4m_1}\right) = 11.9$
"""
end
end

# ╔═╡ 781f04a3-0588-436b-b2b8-14020273875f
let
md"""
# Problem 6

The third-nearest star system to us (after the Alpha Centauri system [which includes Proxima Centauri] and Barnard's Star) is Luhman 16, discovered in 2013 (yes, that recently!) using WISE infrared data.
This binary brown dwarf system is 6.5 light-years away from us, has a maximum separation (between stars) of 1.5" in our sky, and has an orbital period of 27.5 years.
(a) Find the separation distance of these stars in AU.
(b) Find the total mass of the two brown dwarfs.
"""
let
let
	θ = 1.5u"arcsecond"
	d = 6.5u"ly"
	P = 27.5u"yr"
	D = θ * d
	M = 4π^2 / (G * P^2) * D^3 |> u"Msun"
end
md"""
### Problem 6

The binary brown dwarf system Luhman 16 is ``d = 6.5 \text{ lyrs}`` away from us, has a maximum separation (between stars) of ``π'' = 1.5''`` and an orbital period of ``P = 27.5 \text{ years}``.

(a) The separation distance of these stars is

$D = \left(\frac{π''}{206,265 \text{ arcsec rad}^{-1}}\right) \left(d ⋅ \frac{63241.1 \text{ AU}}{1 \text{ ly}}\right) = 3.0 \text{ AU}$

(b) The total mass of the two brown dwarfs is

$M_A + M_B = \frac{4π^2}{GP^2} D^3 = 0.035 M_⊙$
"""
end
end

# ╔═╡ f2f5e4dc-f35a-4f58-851d-5fe9cf366141
let
md"""
# Problem 7 (R&P 13.8)

The star Procyon A has an effective temperature ``T_A = 6530 \text{ K}`` and a radius ``R_A = 2.06 R_⊙``.
Its companion Procyon B has a radius ``R_B = 0.0096R_⊙`` and an absolute bolometric magnitude ``M_\text{bol,B} = 12.9``.

(a) What is the ratio of the two objects' luminosities?

(b) What is the ratio of their surface temperatures?
"""
let
let
	TA = 6530u"K"
	RA = 2.06u"Rsun"
	RB = 0.0096u"Rsun"
	MbolB = 12.9
	LA = 4π*RA^2*σ*TA^4 |> u"Lsun"
	LB = 10^(0.4 * (4.74 - MbolB))*1u"Lsun"
	:a => LA / LB,
	:b => (RB / RA)^(1/2) * (LB / LA)^(-1/4)
end
md"""
### Problem 7

The star Procyon A has an effective temperature ``T_A = 6530 \text{ K}`` and a radius ``R_A = 2.06 R_⊙``.
Its companion Procyon B has a radius ``R_B = 0.0096R_⊙`` and an absolute bolometric magnitude ``M_\text{bol,B} = 12.9``.

(a) To find the ratio of the two objects' luminosities we find the luminosity ``L_A`` of Procyon A,

$L_A = 4πR_A^2 σ_\text{SB} T_A^4 = 6.952 L_⊙$

The luminosity ``L_B`` of Procyon B is

$L_B = 10^{0.4(4.74 - M_\text{bol,B})} = 0.0005445 L_⊙$

Thus, the ratio of the objects' luminosities is

$\frac{L_A}{L_B} = 12770 L_⊙$

(b) The ratio of the two objects' surface temperatures is

$\frac{T_A}{T_B} = \left(\frac{R_B}{R_A}\right)^{1/2} \left(\frac{L_B}{L_A}\right)^{-1/4} = 0.7256$
"""
end
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"
UnitfulAstro = "6112ee07-acf9-5e0f-b108-d242c714bf9f"

[compat]
PhysicalConstants = "~0.2.3"
Unitful = "~1.12.0"
UnitfulAstro = "~1.2.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "e4b5f219f887899d98e59029a672b3730e2b7083"

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
git-tree-sha1 = "332a332c97c7071600984b3c31d9067e1a4e6e25"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.1"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "3ca828fe1b75fa84b021a7860bd039eaea84d2f2"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.3.0"

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
git-tree-sha1 = "612a4d76ad98e9722c8ba387614539155a59e30c"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.0"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Roots]]
deps = ["ChainRulesCore", "CommonSolve", "Printf", "Setfield"]
git-tree-sha1 = "422c880f74967af5a8db5702c6df9a03b465202e"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "2.0.7"

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
git-tree-sha1 = "d57a4ed70b6f9ff1da6719f5f2713706d57e0d66"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.12.0"

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
# ╟─6769e772-44dd-11ed-30e0-5beb62267e68
# ╟─dc4ce9e0-31f3-4fe6-8ee0-51a708d6f2d1
# ╟─bea1bba4-3b8c-4dbd-b669-43468c99bafc
# ╟─8f5554ad-9ae0-476a-9dd4-1959e3fe2825
# ╟─91a3b94c-8ded-45b2-8532-1a2474becabd
# ╟─5e6fdf29-2292-408d-b7fa-d6292c267b63
# ╟─781f04a3-0588-436b-b2b8-14020273875f
# ╟─f2f5e4dc-f35a-4f58-851d-5fe9cf366141
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
