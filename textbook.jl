### A Pluto.jl notebook ###
# v0.19.12

using Markdown
using InteractiveUtils

# ╔═╡ 2858db82-2319-11ed-121f-eb28ec271269
begin
	using PlutoUI

	md"""
	# Foundations of Astrophysics


	By Barbara Ryden and Bradley M. Peterson
	"""
end

# ╔═╡ e9a2ffe8-63db-42d9-91e1-81cc6f7a5109
PlutoUI.TableOfContents()

# ╔═╡ ce1b613c-4713-4c56-a490-177220e266bf
md"# Preface"

# ╔═╡ 2b1c3844-4d7d-412e-b472-35c6efc8e352
md"""
**Remark.**
This book, like many textbooks, was inspired by teaching a class.
The class in question was a two-quarter (5 hours per week) introductory survey course in astrophysics.
The reader of this book, like the students of the course, is assumed to have studied a year of calculus (including differential and integral calculus, basic vector calculus, and a smattering of simple differential equations), as well as a year of calculus-based general physics.
We assume that the reader has only a remote acquaintance, if any, with quantum physics, special relativity, or linear algebra.
"""

# ╔═╡ 80016082-4076-40b2-a23e-df85721ceb8d
md"""
**Remark.**
Our fundamental goals for this book are twofold.
First, we want to introduce students with a serious interest in physical science to the breadth of astronomy, preparing them for more advanced topical courses in the future.
Second, we use astronomical examples to reinforce the physics that the students have already learned.
To this end, we use SI (International System) units, which the students have already encountered in general physics class, rather than the cgs (centimeter, gram, second) units that are frequently encountered in the more advanced astronomical literature.
Units that are peculiar to astronomers, such as parsecs, magnitudes, solar luminosities, and solar masses, are introduced as needed.
"""

# ╔═╡ f12a6397-8954-4227-8dcd-28db168e7b04
md"""
**Remark.**
Our organization of the material is, in many respects, quite traditional.
We start with the kinematics and dynamics of the solar system; then, after discussing the interaction of matter and light, we proceed to a discussion of the physical nature of objects in the solar system.
We conclude our discussion of solar system astronomy with an examination of the solar system as illuminated by the exciting new field of exoplanets.
The second half of the book covers stellar, galactic, and extragalactic astronomy, followed by a brief discussion of cosmology.
"""

# ╔═╡ 67931c23-82d0-4293-8b52-6c3e86894a0b
md"""
**Remark.**
Our goals for the book, to some extent, dictate the relative emphasis placed on different fields of astronomy.
Some particularly rich areas of astronomy, such as stellar populations, globular clusters, and the large-scale structure of the universe, are only briefly touched on.
We regret the brevity with which we cover these and other fascinating topics in astronomy.
However, we had to balance our desire to make the book of manageable size with our desire to cover thoroughly those topics that enhance understanding of important physical principles (such as blackbody radiation, physics of non-LTE gases, and gravitational accretion).
"""

# ╔═╡ 8075512c-3e30-4242-86d1-50f9cf5a04f9
md"""
**Remark.**
Our text benefited from criticism by many individuals.
Most important, the book was shaped by several classes of undergraduate students at The Ohio State University, who provided detailed feedback on nearly every aspect of the book.
In particular, most end-of-chapter problems in this book have been heavily field-test; our students never hesitated to point out when a problem was clumsily or ambiguously worded.
Many of the remaining end-of-chapter problems are classic problems that appear in somewhat similar form in earlier textbooks.
The textbooks from which we have adopted and adapted problems are cited in the Bibliography at the end of the textbook.
"""

# ╔═╡ ea7b0a4c-4ac2-41c6-9aa1-fe171ec08240
md"""
**Remark.**
We are grateful for reviews of individual chapters by instructors with experience in teaching astrophysics at this level, notably Byron D. Anderson, Phil Armitage, Don Bord, Tereasa Brainerd, David Cohen, John Cowan, Richard A. Crowe, Carsten Denker, George Djorgovski, Stephen Gottesman, Kim Griest, Peter H. Hauschildt, John Huchra, Philip A. Hughes, Steven Kawaler, Jeremy King, Chip Kobulnicky, Donald G. Luttermoser, Kevin MacKay, Michael P. Merilan, Stan Owocki, Eric S. Perlman, Lawrence S. Pinsky, Gary D. Schmidt, James Schombert, Horace Smith, Steven Stahler, Curtis J. Struck, Paula Szkody, Dan Wilkins, Jeff Wilkerson, Richard M. Williamon, Gerard Williger, Vincent Woolf, Kausar Yasmin, and Dennis Zaritsky, as well as a number of anonymous reviewers. 
We incorporated much of the advice received from these individuals.
"""

# ╔═╡ 215217ae-d0c3-4349-9c20-6aa8ef276836
md"""
**Remark.**
We are especially grateful to friends and colleagues at The Ohio State University who provided invaluable assistance.
Richard Pogge provided help with both scientific and technical issues.
Jessica Orwig prepared many of the figures and tables.
Marc Pinsonneault, David Weinberg, and Molly Peebles provided information for figures.
Finally, the fact that this is a real book rather than a pile of incoherent notes and scrawled drawings is due to our diligent production team at Pearson Addison-Wesley.
"""

# ╔═╡ 17cf7bf6-6065-46d3-ba21-e1f4f4712254
md"# Physical Constants"

# ╔═╡ 98a6c6b1-45ef-48b1-9f30-c88d321fff6a
md"""
| Name | Symbol | Value | Units |
|------|--------|-------|-------|
| Gravitational constant | ``G`` | 6.673 × 10⁻¹¹ | m³kg⁻¹s⁻² |
| Permittivity of the vacuum | ``ϵ_0`` | 8.854 × 10⁻¹² | C²N⁻¹m⁻² |
| Permeability of the vacuum | ``μ_0`` | 4π × 10⁻⁷ | W m |
| Elementary charge | ``e`` | 1.602 × 10⁻¹⁹ | C |
| Speed of light in vacuum | ``c`` | 2.998 × 10⁸ | m s⁻¹ |
| Planck constant | ``h`` | 6.626 × 10⁻³⁴ | J s |
| Reduced Planck constant | ``ħ ≡ h/2π`` | 1.055 × 10⁻³⁴ | J s |
| Boltzmann constant | ``k`` | 1.381 × 10⁻²³ | m²kg s⁻²K⁻¹ |
| Stefan-Boltzmann constant | ``σ_{SB}`` | 5.670 × 10⁻⁸ | W m⁻²K⁻⁴ |
| Thomson cross-section | ``σ_e`` | 6.652 × 10⁻²⁹ | m² |
| Proton mass | ``m_p`` | 1.673 × 10⁻²⁷ | kg |
| Electron mass | ``m_e`` | 9.109 × 10⁻³¹ | kg |
"""

# ╔═╡ 4d81618a-b05f-4657-8568-69a47be558b1
md"# Astronomical Constants"

# ╔═╡ b440a70f-7faa-4d2e-8d41-3b693b77b862
md"""
| Name | Symbol | Value | Units |
|------|--------|-------|-------|
| Mass of Earth | ``M_⊕`` | 5.974 × 10²⁴ | kg |
| Mass of Sun | ``M_⊙`` | 1.989 × 10³⁰ | kg |
| Mass of Moon | | 7.36 × 10²² | kg |
| Equatorial radius of Earth | ``R_⊕`` | 6378 | km |
| Equatorial radius of Sun | ``R_⊙`` | 6.955 × 10⁵ | km |
| Equatorial radius of Moon | | 1737 | km |
| Mean density of Earth | | 5515 | kg m⁻³ |
| Mean density of Sun | | 1408 | kg m⁻³ |
| Mean density of Moon | | 3346 | kg m⁻³ |
| Luminosity of Sun | ``L_⊙`` | 3.839 × 10²⁶ | W |
| Effective temperature of Sun | | 5778 | K |
| Hubble constant | ``H_0`` | 70 ± 5 | km s⁻¹ Mpc⁻¹ |
| Light-year | | 9.461 × 10¹² | km |
| Astronomical unit | AU | 1.496 × 10⁸ | km |
| Parsec | pc | 3.086 × 10¹³ | km |
"""

# ╔═╡ 5482108f-d280-45d0-9f34-660ff3b1cdb8
md"# 1 Early Astronomy"

# ╔═╡ ae7f8a3f-e39f-421d-a0af-c63c23a7b141
md"""
**Remark.** The term **"astronomy"** is derived from the Greek words *astron*, meaning "star," and *nomos*, meaning "law."
This reflects the discovery by ancient Greek astronomers that the motions of stars in the sky are not arbitrary but follow fixed laws.
In modern times, astronomy is usually defined as the study of objects beyond the Earth's atmosphere, including not only stars but also celestial objects as small as interstellar dust grains and as large as superclusters of galaxies.
The field of **cosmology**, which deals with the structure and evolution of the universe as a whole, is also regarded as part of astronomy.
"""

# ╔═╡ f463d353-60e0-40b2-811c-d50b54c3bbc2
md"""
**Remark.** In the late nineteenth century, the term **"astrophysics"** was invented, to describe specifically the field that studies how the properties of celestial objects are related to the underlying laws of physics.
Thus, astrophysics could be regarded as both a subfield of physics and as a subfield of astronomy.
However, because a knowledge of physics is crucial for any type of astronomical study, the terms "astronomy" and "astrophysics" are often used nearly interchangeably.
"""

# ╔═╡ a186d2b2-eba3-4b1b-9f6f-174e37592818
md"""
**Remark.** It is customary to start learning astronomy from a historical perspective.
This is a natural way to learn about the universe; it permits our personal growth in knowledge to echo humanity's growth in knowledge, starting with relatively nearby and familiar objects, and then moving forward.
Furthermore, as we will see, some of the most fundamental things we learn about the universe are based on simple, straightforward observations that don't require telescopes or space probes.
Let us begin, therefore, by throwing away our telescopes and considering what we can see of the universe with our unaided eyes.
"""

# ╔═╡ 620d2f6e-5775-4424-af25-240facd2c3ff
md"## 1.1 The Celestial Sphere"

# ╔═╡ 1a60d66f-e912-45f3-bb8a-2367ad42f38b
md"""
**Remark.**
When you look up at a cloudless night sky, you have little sense of depth.
In Color Figure 1, for instance, it is not immediately obvious that the fuzzy streak in the upper part of the picture is a comet a few light-minutes away and that the fuzzy blob in the lower part is a galaxy two million light-years away.
You can pick up a few clues about depth with you naked eyes (for instance, the Moon passes in front of stars, so it must be closer to us than the stars are) but for the most part, determining distances to celestial objects requires sophisticated indirect methods.
"""

# ╔═╡ 9330e369-dc72-4f85-87b8-0f1a6334ab1e
md"""
**Remark.**
Although it is difficult to determine the distance to celestial objects, it is much easier to determine their position projected onto the **celestial sphere**.
The celestial sphere is an imaginary spherical surface, centered on the Earth's center, with a radius immensely larger than the Earth's radius.
(In Figure 1.1, the spherical Earth is exaggerated in size relative to the outer celestial sphere, for easy visibility.)
Given the Earth's inconvenient opacity, an observer on the Earth's surface can see the sky only above the **horizon**, defined as a plane tangent to the idealized, perfectly spherical Earth at the observer's location (that is, it touches the Earth at the observer's feet and at no other place).
The horizon is always defined locally, meaning that it moves with the observer.
The horizon intersects the celestial sphere in a great circle called the **horizon circle**.
The horizon circle divides the celestial sphere into two hemispheres; only the hemisphere above the horizon is visible to the observer.
The point directly above the observer's head, in the middle of the visible hemisphere of the celestial sphere, is called the **zenith** (point Z in Figure 1.1).
The point directly below the observer's feet, opposite the zenith, is the **nadir**.
"""

# ╔═╡ 40136d36-028d-4868-97a1-05c41d3c311c
md"""
**Remark.**
Since the celestial sphere is indeterminately large, distances between points on the celestial sphere are measured in angular units, as seen by an Earthly observer, rather than in physical units such as kilometers.
Astronomers most frequently measure angles in degrees, arcminutes, and arcseconds, with 360 degrees (360°) in a circle, 60 arcminutes (60') in a degree, and 60 arcseconds (60'') in an arcminute.
When they measure angles smaller than an arcsecond, they revert to the decimal system and use milliarcseconds and microarcseconds.
"""

# ╔═╡ 14397061-2e18-4610-a960-922d29951e29
md"""
**Remark.**
When the Sun is above the horizon, it appears as a bright disk on the celestial sphere, 30 arcminutes across.
The Moon, coincidentally, is also roughly 30 arcminutes in diameter as seen from Earth, but appears to change in shape as it waxes and wanes from new Moon to full and back again.
When the Sun is below your horizon, you can see as many as 3000 stars with your unaided eyes.
The stars in the night sky appear as tiny lights, blurred by our imperfect human vision into blobs about an arcminute across.
Starting in prehistoric times, astronomers have identified apparent groupings of stars called **constellations**.
The stars in a constellation are not necessarily physically related, since they may be at very different distances from the Earth.
"""

# ╔═╡ cc045f26-e7bd-4087-90ca-fc81899a894e
md"## 1.2 Coordinate Systems on a Sphere"

# ╔═╡ f6ce5834-d562-4e84-b489-17cb56e3761c
md"""
**Remark.**
If we want to describe the approximate position of a star on the celestial sphere, we can say what constellation it lies within.
However, since there are only 88 constellations on the entire celestial sphere, some of them quite large, merely knowing the constellation doesn't give a very precise location.
For a more precision description of positions on the celestial sphere, we need to set up a coordinate system.
On the two-dimensional celestial sphere, two coordinates will be needed to describe any position.
Geographers have already shown us how to set up a coordinate system on a sphere; the system of **latitude** and **longitude** provides a coordinate system on the surface of the (approximately) spherical Earth.
On the Earth, the north and south poles represent the points where the Earth's rotation axis passes through the Earth's surface.
"""

# ╔═╡ 3849e67e-1cb0-4f3a-a165-6cee3aeaf38b
md"""
**Definition.**
The **equator** is the great circle midway between the north and south pole, dividing the Earth's surface into a northern hemisphere and a southern hemisphere.
The latitude of a point on the Earth's surface is its angular distance from the equator, measured along a great circle perpendicular to the Earth's equator (Figure 1.2).
Latitude is measured in degrees, arcminutes, and arcseconds, as is longitude.
Thus, the use of latitude and longitude doesn't require knowing the size of the Earth in kilometers or any other unit of length.
In the example shown in Figure 1.2, the city of Columbus, Ohio, has a latitude of 40° N; that is, it's located 40° north of the equator.
"""

# ╔═╡ be66bc34-5c73-42c9-aa1d-87805cc94c98
md"""
**Remark.**
Latitude alone doesn't uniquely specify a point on the Earth's surface.
If you invited a friend to lunch at 40° N, he wouldn't know whether to expect hamburgers in Columbus, Peking duck in Beijing, or shish kebab in Ankara.
The required second coordinate on the Earth's surface is the longitude.
For each point on the Earth's surface, half a great circle can be drawn starting from the north pole, running through the point in question, and ending at the south pole.
This half-circle, which intersects the equator at right angles, is called the point's **meridian of longitude**, or just "meridian" for short.
The **longitude** of the point is the angle between the point's meridian and some other reference meridian.
By international agreement, the reference meridian for the Earth, called the **Prime Meridian**, is the meridian that runs through the Royal Observatory at Greenwich, England.
In Figure 1.2, the city of Columbus has a longitude of 83° W; that is, the meridian of Columbus is 83° west of the Prime Meridian.
"""

# ╔═╡ 4c79f385-e6c1-4180-8437-9fe57cf28358
md"""
**Remark.**
The latitude--longitude coordinate system can be applied to other planets (and to spherical satellites as well).
The rotation axis of the planet defines the poles and equator; the Prime Meridian is generally chosen to go through a readily identifiable landmark.
The Martian Prime Meridian, for instance, runs through the center of a particular small crater called Airy-0.
A coordinate system using latitude-like and longitude-like coordinates can also be applied to the celestial sphere.
We just need to specify a great circle that can play the role of the equator on Earth, and a perpendicular meridian that can play the role of the prime meridian.
"""

# ╔═╡ d0fd7228-d77c-4bca-8378-70780ba5a742
md"""
**Remark.**
One such coordinate system on the celestial sphere is based on an observer's horizon, and hence is called the **horizon coordinate system**.
In this system, illustrated in Figure 1.3, the latitude-like coordinate is the **altitude**, defined as the angle of a celestial object above the horizon circle.
The zenith (the point directly overhead) is at an altitude of 90°.
Points on the horizon circle are at an altitude of 0°.
The nadir is at an altitude of -90°, but in practice, negative altitudes are seldom used, since they represent objects that are hidden by the Earth.
The longitude-like coordinate in the horizon coordinate system is called the **azimuth**.
"""

# ╔═╡ fc10c263-8607-420e-a393-96f73ec7509a
md"""
**Remark.**
For any point on the celestial sphere, half a great circle can be drawn from the zenith, through the point in question, to the nadir.
The half-circle that runs through the northr point on the horizon circle acts as the "prime meridian" in the horizon coordinate system.
The azimuth is measured in degrees running from north through east.
An object due north of an observer has an azimuth of ``0^∘``, an object due east has an azimuth of ``90^∘``, and so forth.
If you know the altitude and azimuth of any object in your horizon coordinate system, you know where to point your telescope in order to see it.
In the example shown in Figure 1.3, a star has an altitude of ``40^∘`` and an azimuth of ``83^∘``; in other words, it's nearly halfway from the horizon to the zenith, off to the east of the observer.
"""

# ╔═╡ 17465f84-7c65-4053-8370-d3def7a5263f
md"""
**Remark.**
One shortcoming of the horizon coordinate system is that every observer on Earth has a different, unique horizon and hence has a different, unique horizon coordinate system.
A star that is near the zenith (altitude ``≈90^∘``) for an observer in Buenos Aires will be near the nadir (altitude ``≈90^∘``) for an observer in the antipodal city of Shanghai.
To describe positions of objects on the celestial sphere, it is useful to have a coordinate system that all astronomers, regardless of location, can agree on, just as geographers all agree to use latitude and longitude to describe positions on the Earth.
"""

# ╔═╡ f2043c62-14bd-4666-9ff0-f8f82f907670
md"""
**Remark.**
To build a coordinate system useful for all Earthlings, we start by projecting the Earth's poles and equator outward onto the celestial sphere.
The Earth's rotation axis, which passes through the north and south poles of the Earth, intersects the celestial sphere at the **north celestial pole** (labeled as NCP in Figure 1.1) and the **south celestial pole** (labeled as SCP).
The north celestial pole is at the zenith for an observer at the Earth's north pole; more generally, for an observer at a latitude ``ℓ`` north of the equator, it will be at an altitude of ``ℓ`` and an azimuth of ``0^∘``.
The projection of the Earth's equator onto the celestial sphere is called the **celestial equator** (labeled as CEq in the figure).
The celestial equator passes through the zenith for an observer on the Earth's equator.
"""

# ╔═╡ b1422c60-582c-4ec3-ba8d-218738675ede
md"""
**Remark.**
On the Earth's surface, a point's latitude is its angular distance north or south of the equator.
Similarly, on the celestial sphere, a point's **declination** (``δ``) is its angular distance north or south of the celestial equator.
For points north of the celestial equator, the declination is positive ``(0^∘ < δ ≤ 90^∘)``, and for points south of the celestial equator, the declination is negative ``(-90^∘ ≤ δ < 0^∘)``.
However, the declination alone is insufficient to uniquely locate a point on the celestial sphere, just as latitude alone is insufficient to uniquely locate a point on the Earth.
To determine the equivalent of longitude on the celestial sphere, it is necessary to choose a celestial "prime meridian" running from the north celestial pole to the south celestial pole.
If we let the observer's zenith act as the celestial "Greenwich," then the **zenith meridian**, defined as the arc running from the north celestial pole through the zenith to the south celestial pole, will act as a celestial "prime meridian."
The longitude-like coordinate, measured westward from the zenith meridian, is called the **hour angle** (``H``).
For a given observer at a given time, the declination (angular distance from the celestial equator) and hour angle (angular distance from the zenith meridian) uniquely specify the location of a star, or other object, on the celestial sphere.
"""

# ╔═╡ d41bb1d9-5085-4a2f-80ad-e66ab486f835
md"""
**Remark.**
One complication of using the hour angle to specify the location of a star is that observers at different longitudes with have different observer's meridians, and hence will measure different hour angles for the same star.
If your star is on your zenith meridian, it will be 1° east of the zenith meridian for an observer 1° of longitude west of you.
Another complication results from the fact that the Earth is rotating from west to east, an observer pinned by gravity to the Earth's surface experiences a strong illusion that the Earth is stationary and the celestial sphere is rotating from east to west.
Stars thus appear to follow circular paths called **diurnal circles** that are parallel to the celestial equator; that is, they stay a fixed angular distance from the celestial equator, and their declination remains constant.
This situation is illustrated in Figure 1.4.
Over the course of 24 hours, the hour angle of a star changes by 360° as it travels in its diurnal circle.
Because of the constant rate of change of the hour angle (15° per hour), the hour angle is often measured in units of hours (h), minutes (m), and seconds (s) instead of degrees, arcminutes, and arcseconds, with ``1^h = 15^∘``, ``1^m = 15'``, and ``1^s = 15''``.
A star that is on the zenith meridian right now has hour angle ``H = 0^h``; 6 hours from now it will be at ``H = +6^h``, off to the observer's west; 12 hours from now it will be at ``H = +12^h``, on the nadir meridian.
Thus, the hour angle of a star can be thought of as the time that has elapsed since it was last on the zenith meridian.
"""

# ╔═╡ f847c186-b949-4760-860d-035ff9e7a0ef
md"""
**Remark.**
The hour angle of a star is constantly changing because it is measured relative to an observer's meridian that is tied to the rotating Earth.
If we want a longitude-like coordinate that is constant for a given star over the course of 24 hours, we need to measure it relative to a new meridian, one that is tied to the celestial sphere rather than to the Earth.
In short, we need a point on the celestial sphere that acts as the astronomical equivalent of Greenwich, England.
Instead of selecting one particular star to serve as a "Greenwich," astronomers have chosen a point on the celestial equator termed the "vernal equinox."
(In Section 1.3, we give the technical definition of the vernal equinox; but remember, any point on the celestial sphere would work equally well, just as any point on the Earth would work just as well as Greenwich.)
"""

# ╔═╡ df88331b-2521-4bef-a290-554c92ef7888
md"""
**Remark.**
Half a great circle drawn on the celestial sphere, from the north celestial pole, through the vernal equinox, to the south celestial pole, is the celestial equivalent of the Prime Meridian on Earth (Figure 1.5).
The longitude-like coordinate measured *eastward* from this "Prime Meridian" is called the **right ascension** (``α``).
The right ascension and declination of a star change slowly with time (just as the latitude and longitude of a city on Earth may change slowly thanks to plate tectonics), but they can be treated as constant over the course of a single night, unlike the inexorably changing hour angle.
The right ascension of a celestial object, like its hour angle, is characteristically measured in hours, minutes, and seconds.
The coordinate system using right ascension and declination is called the **equatorial coordinate system** and is widely used in astronomy; catalogs of stars, for instance, generally give their positions in terms of right ascension and declination.
For the example shown in Figure 1.5, the star in question is at a right ascension ``α = 277^∘ = 18^h 28^m`` and a declination ``δ = +40^∘``.
This is within the constellation Lyra, not far from the bright star Vega.
"""

# ╔═╡ d153c413-eb70-4d63-babb-00ae89edefdb
md"## 1.3 Celestial Motions"

# ╔═╡ 78f6ea3a-98f1-4b7d-aa6b-9e267227fffc
md"""
**Remark.**
As mentioned above, and illustrated in Figure 1.4, an observer on the rotating Earth sees stars move in diurnal circles, just as if the Earth were stationary and the stars were glued to a rigid, rotating celestial sphere.
The horizon plane of an observer bisects the celestial sphere, and thus also bisects the celestial equator (labeled "CEq" in Figure 1.4).
Thus, stars on the celestial equator are above the horizon for 12 hours a day and below the horizon for 12 hours a day
The diurnal circles of stars not on the celestial equator are not bisected by the horizon (except in the special case when the observer somewhere on the equator, when all diurnal circles are bisected).
"""

# ╔═╡ 830a37fc-3eed-4c23-b7e3-9d3928b8938f
md"""
**Remark.**
Consider an observer somewhere in the Earth's northern hemisphere, as shown in Figure 1.4.
For stars north of the celestial equator, more than half of their diurnal circles are above the horizon, so they spend more time above the horizon than below.
For an observer at latitude ``ℓ``, all stars within an angular distance ``ℓ`` of the north celestial pole (that is, with declination ``δ > 90° - ℓ``) will have diurnal circles that don't intersect the horizon plane at all.
These stars, called **circumpolar stars**, never fall below the observer's horizon but can be seen to move in counterclockwise circles about the north celestial pole.
"""

# ╔═╡ b8fa57a1-0be2-498e-92b8-c881360353f1
md"""
**Remark.**
Figure 1.6 shows a long exposure of the night sky over Mauna Kea, Hawaii, at a latitude ``ℓ = 20°``; the stair trails cover about 1/12 of a full circle, indicating the photographic exposure was ``∼2`` hours long.
By contrast with circumpolar stars, stars within an angular distance ``ℓ`` of the *south* celestial pole never rise above the horizon; again, the horizon plane never intersects their diurnal circles.
For stars south of the celestial equator but farther than ``ℓ`` from the south celestial pole, less than half of their diurnal circles are above the horizon, rising in the southeast and soon setting in the southwest.
"""

# ╔═╡ b39622a8-9240-4b6b-a144-8b1bbadeef15
md"""
**Remark.**
As well as the stars, the Sun, Moon, and planets are seen to move in diurnal circles.
However, if the Sun, Moon, and planets are observed for times much longer than a single night, additional motions are also seen.
The most important motions are the following:

- The relative positions of **stars** can be approximated as constant, over human time scales.
  Although stars are in motion relative to each other and to the Sun, on time scales shorter than decades the motion cannot be detected without a telescope.

- The **Sun** moves eastward relative to the stars by about ``1^∘`` per day.
  This is because the Earth is orbiting the Sun, and we see the Sun in projection against different background stars as we orbit around it.
  Because of the relative motion of the Sun and stars, the stars rise 4 minutes earlier each day relative to the Sun.

- The **Moon** also moves eastward relative to the stars, by about 13° per day.
  This is because the Moon orbits around the Earth in an eastward direction, taking 27.3 days for a complete orbit.
  The Moon's motion around the sky ``(360^∘/27.3 \text{ days} ≈ 13^∘ \text{ day}^{-1})`` is compared to the Earth's eastward rotation (360° day⁻¹), so we still see the Moon rise in the east and set in the west, just like the Sun.
  Relative to the Sun, the Moon moves eastward by about ``12^∘`` per day, so it takes ``360^∘/12^∘ \text{ day}^{-1} ≈ 30 \text{ days}`` for the Moon to "lap" the Sun.
  Because of the relative motion of Sun and Moon, the Moon rises about 50 minutes later each day.

- The **planets** known prior to the invention of the telescope were Mercury, Venus, Mars, Jupiter, and Saturn (in addition to the Earth, of course).
  Without a telescope, the planets look like unresolved stars.
  Early astronomers distinguished them from stars by the fact that planets move relative to the stars.
  Ordinarily, planets move slowly eastward relative to the stars.
  On occasion, however, they reverse their motion and move westward relatiev to the stars for a short period.
  This reversed motion is called **retrograde motion**.
  Figure 1.7, illustrates, an example of retrograde motion for the planet Mars.
"""

# ╔═╡ 5a52cb48-e8c6-4d12-8c25-470bb235c410
md"""
**Remark.**
The great circle along which the Sun moves on the celestial sphere is called the **ecliptic**.
The ecliptic represents the plane of the Earth's orbit around the Sun, projected onto the celestial sphere.
The ecliptic, as shown in Figure 1.8, is inclined by 23.5° relative to the celestial equator.
The tilt of 23.5° between the ecliptic and celestial equator is called the **obliquity of the ecliptic**.
The obliquity is nonzero because the Earth's rotation axis is not exactly perpendicular to the orbit of the Earth around thet Sun; instead, the axis is tilted by 23.5° from the perpendicular.
"""

# ╔═╡ 125dcbf3-eab5-4a44-8b68-f7d1517dd5e7
md"""
**Remark.**
Since the ecliptic and celestial equator are two different great circles on a sphere, they intersect at two points, 180° apart.
The two points of intersection are called the **equinoxes**.
The point where the Sun moves from the northern celestial hemisphere to the southern is called the **autumnal equinox**; the Sun is at the autumnal equinox around September 21.
The point where the Sun moves from the southern celestial hemisphere to the northern is called the **vernal equinox**; the Sun is at the vernal equinox around March 21.
(Recall from Section 1.2 that the vernal equinox was chosen as the origin for the measurement of right ascension).
"""

# ╔═╡ c1d28c59-4667-4399-955f-6dcf194fae2c
md"""
**Remark.**
The point on the ecliptic that is farthest north of the celestial equator (it has declination ``δ = +23.5^∘``) is called the **summer solstice**; the Sun is at the summer solstice around June 21.
The point on the ecliptic that is farthest south of the celestial equator ``(δ = -23.5^∘)`` is called the **winter solstice**; the Sun is at the winter solstice around December 21.
Astronomers usually use the termss "equinox" and "solstice" to refer to points on the celestial sphere; however the terms can also refer to the *time* at which the Sun reaches those points.
"""

# ╔═╡ 075aa569-b808-4c68-b342-3663d408bb30
md"""
**Remark.**
The Sun's diurnal path varies during the year because its declination changes as it moves along the ecliptic.
The time per day that the Sun is above the horizon depends on where it is relative to the celestial equator.
At the equinoxes, the Sun is exactly on the celestial equator, and thus spends 12 hours above the horizon and 12 hours below the horizon.
When the Sun is north of the celestial equator, it is above the horizon for more than 12 hours for a northern hemisphere observer.
When it's south of the celestial equator, it is above thet horizon for less than 12 hours for a northern hemisphere observer.
In the northern hemisphere, the shortest night of the year occurs when the Sun is at the summer solstice, its point farthest north of the celestial equator.
Similarly, the longest night of the year in the northern hemisphere occurs when the Sun is at the winter solstice.
"""

# ╔═╡ bfb22ba4-3407-4d1c-aa08-12001e031592
md"""
**Remark.**
As mentioned on page 10, stars with a declination ``δ > 90^∘ - ℓ`` are circumpolar stars for an observer at latitude ``ℓ`` north of the equator.
This implies that a star in the northern celestial hemisphere, with declination ``δ > 0^∘``, will be a circumpolar star for all observers with latitude ``ℓ > 90^∘ - δ``.
When the Sun is at the summer solstice, it has a declination ``δ = +23.5^∘``, and hence is a circumpolar star for observers north of latitude for observers north of latitude ``66.5^∘ \text{ N}``.
Within this region, bounded by the **Arctic Circle**, observers experience the phenomenon of the midnight Sun around June 21; the Sun never sets but makes a complete circle in azimuth over 24 hours.
At the same time, observers within the **Antarctic Circle**, at latitude ``66.5^∘ \text{ S}``, never see the Sun rise over the horizon during the course of 24 hours (see Figure 1.9).
At the time of the winter solstice, around December 21, the situation is reversed; observers within the Arctic Circle have 24 hours of darkness while observers within the Antarctic Circle have 24 hours of sunlight.
"""

# ╔═╡ bbe2d553-51db-4439-be48-f3493a2a2b76
md"""
**Remark.**
Globes of the Earth usually have the Arctic and Antartcic Circles drawn on them (see Figure 1.9).
"""

# ╔═╡ ff2fe371-8f9a-42ed-98fd-a833c6d7cceb
md"""
**Remark.**
The Sun's annual motion along the ecliptic carries it through a group of constellations that comprise the **zodiac**.
"""

# ╔═╡ e4ab8493-d444-4b60-9dfa-f2b06d4a64e4
md"""
**Remark.**
The vernal equinox has not always been in Pisces.
"""

# ╔═╡ d56616b1-ead8-4bfe-a536-5d2f4829a059
md"""
**Remark.**
In Section 4.1, we examine the physical causes that make the Earth precess like a dying top.
"""

# ╔═╡ b4e4780f-343b-4301-8020-989f14204cfe
md"""
**Remark.**
As the celestial poles and equator continuously move relative to the background stars, the declination of those stars must also continuously change.
"""

# ╔═╡ 2f3b6a6d-34f6-4211-9463-725a0443d964
md"## 1.4 Basic Timekeeping"

# ╔═╡ ab0a7442-7566-476b-afbe-9758b3bb22da
md"""
**Remark.**
Astronomy was initially developed largely for its practical applications, such as celestial navigation and timekeeping.
"""

# ╔═╡ cd9b0fb4-9e3c-4e98-9168-fc8da93ac684
md"""
**Remark.**
With the invention of writing, astronomers began leaving systematic record of their observations of the sky.
"""

# ╔═╡ 8a676988-8231-4814-9989-5a1180439d33
md"""
**Remark.**
Astrology, which tracks the positions of planets in the belief that they influence human events, was also a major motivation for the development of astronomy in Babylonia and elsewhere.
"""

# ╔═╡ fb389a97-7da9-4a72-a57b-06b110d886b8
md"""
**Remark.**
All common units of time are ultimately astronomical in origin.
The **day** is based on (but is not identical to) the rotation period of the Earth.
The **hour** is defined as a fraction of the day.
Ancient cultures divided the day into 12 hours of daylight and 12 hours of darkness; thus, the daylight hours were longest near the time of the summer solstice and shortest near the time of the winter solstice.
"""

# ╔═╡ 9612b7f7-de01-4adb-bfc9-e9d9fe2bc9e3
md"""
**Remark.**
The **month** and the **year** are based on (but are not identical to) the orbital period of the Moon around the Earth, and the Earth around the Sun, respectively.
"""

# ╔═╡ 613b596f-fd94-4713-8e98-3c7461f7cb2f
md"## 1.5 Solar and Sidereal Time"

# ╔═╡ e44589de-1d48-424d-b9b7-970d38d2bd97
md"""
**Remark.**
In Section 1.4, we noted that the length of the day, as it is most commonly defined, is not exactly equal to the rotation period of the Earth.
Let's see why this is true.
By convention, we define the "day" to be the interval between successive **upper transits** of a celestial object.
Because of the Earth's rotation, a celestial object will cross, or **transit**, the observer's meridian twice a day.
The upper transit occurs when the object crosses the zenith meridian, and the lower transit occurs half a day later, when it crosses the nadir meridian.
The time between two upper transits of a star is a **sidereal day**; this represents the Earth's rotation period relative to the distant fixed stars.
The time between two upper transits of the *Sun* is a **solar day**, which is slightly longer than the sidereal day, as seen in Figure 1.11.
The fundamental measure of time used by humans is solar time, since people find it more convenient to schedule their lives around how the Sun moves in the sky rather than how the inconspicuous nighttime stars move.
"""

# ╔═╡ 5155536b-ea92-4671-96c7-b6b98c47eebc
md"""
**Remark.**
The difference in length between the sidereal and solar day is the result of a change in the observer's frame of reference.
The sidereal day is the Earth's rotation period measured in the nonrotating frame of reference of the fixed stars, also known as the sidereal frame.
The solar day is the Earth's rotation period measured in a reference frame that co-rotates with a line drawn from the Earth to the Sun.
To examine the mathematical relation between the sidereal day and the solar day, let ``\vec{ω}_\text{sid}`` be the angular velocity of the Earth's rotation in the sidereal frame and let ``\vec{ω}_\text{E}`` be the angular velocity of the Earth's orbital motion in the same frame of reference.
The difference between these is the angular velocity of the Earth's rotation in a reference frame that co-rotates with the Earth--Sun line; let's call this ``\vec{ω}_\text{sol}``.
Specifically, we see that

$\vec{ω}_\text{sid}(t) = \vec{ω}_\text{sol}(t) + \vec{ω}_\text{E}(t). \tag{1.1}$

If the angular velocity vectors are parallel, this can be rewritten as a scalar equation,

$ω_\text{sid}(t) = ω_\text{sol}(t) + ω_E(t). \tag{1.2}$

For the Earth--Sun system, ``ω_\text{sid}`` and ``ω_\text{E}`` aren't exactly parallel, since they are tilted by 23.5° relative to each other.
However, the parallel assumption gives a reasonable first approximation.
"""

# ╔═╡ 95dbc9ba-5070-4de5-8d9c-2d64831387b7
md"""
**Remark.**
If, addition, ``ω_\text{sid}``, and ``ω_\text{E}`` are constant, then equation (1.2) can be rewritten in terms of time rather than angular velocity.
In that case, ``|ω| = 2π / P``, where ``P`` is the period of the circular motion in question.
Thus, if ``P_\text{sid}`` is the length of the sidereal day, ``P_\text{sol}`` is the length of the solar day, and ``P_\text{E}`` is the Earth's orbital period around the Sun,

$\begin{align*}
\frac{2π}{P_\text{sid}} &= \frac{2π}{P_\text{sol}} + \frac{2π}{P_\text{E}} \\
\frac{1}{P_\text{sid}} &= \frac{1}{P_\text{sol}} + \frac{1}{P_\text{E}} \\
\end{align*}. \tag{1.3}$

If we define the solar day to be ``P_\text{sol} ≡ 1 \text{ day}``, then we note that ``P_\text{E} ≈ 365 \text{ days} ≫ P_\text{sol}``.
Thus, we may write

$P_\text{sid} = \left(\frac{1}{P_\text{sol}} + \frac{1}{P_\text{E}}\right)^{-1} = P_\text{sol} \left(1 + \frac{P_\text{sol}}{P_\text{E}}\right)^{-1} ≈ P_\text{sol} \left(1 - \frac{P_\text{sol}}{P_\text{E}}\right). \tag{1.4}$

The difference between the solar day and the sidereal day is then

$\begin{align*}
P_\text{sol} - P_\text{sid} &≈ P_\text{sol} \left(\frac{P_\text{sol}}{P_\text{E}}\right) \\
&≈ 1 \text{ day} \left(\frac{1}{365}\right) \left(\frac{24 \text{ hr}}{1 \text{ day}}\right) \left(\frac{60 \text{ min}}{1 \text{ hr}}\right) \\
&≈ 4 \text{ min}. \tag{1.5}
\end{align*}$

Thus, the length of the sidereal day is ``23^\text{h} 56^\text{m}``.
This means that, relative to the Sun, the stars rise 4 minutes earlier each day as the Sun moves slowly eastward along the ecliptic.
"""

# ╔═╡ ac2d60aa-c43e-4ad6-8408-01a7f95b064f
md"""
**Remark.**
Although the Sun makes a convenient clock for the terrestrial observers, and one that never needs winding, defining time in terms of the solar day has one major problem.
The length of the apparent solar day, defined as the time between one upper transit of the Sun and the next, varies over the course of a year.
The variations in the apparent solar day are not huge: the shortest apparent solar days, which occur in March and September, are less than a minute shorter than the longest apparent solar days, which occur in June and December.
Nevertheless, the differences in the lenth of the apparent solar day were known to ancient Babylonian astronomers, thanks to their careful observations.
From a purely empirical standpoint, astronomeres circumvent the problem of the variable length of the apparent solar day by defining two types of time measurement:

- **Apparent solar time** is measured by the Sun's position relative to the local observer's meridian.
  Apparent solar time is the time measured by a sundial.

- **Mean solar time** is the time kept by a fictitious "mean Sun" that travels eastward along the celestial equator at a constant rate, completing one circuit in one year.
  The mean solar day is thus equal to the average length of an apparent solar day.
  The mean solar day, which is constant over time, is the basis for the time kept by mechanical and electronic clocks.

These two measures of time are related by the **equation of time**.
Specifically,

$\text{Equation of Time} = \text{Apparent Solar Time} - \text{Mean Solar Time}. \tag{1.6}$

The equation of time, as calculated from observations of the Sun, is shown in Figure 1.12.
In mid-February, the accumulation of long apparent solar days causes apparent solar time to fall as much as 14 minutes behind mean solar time.
Conversely, during early November, apparent solar time runs more than 16 minutes ahead of mean solar time.
If the equation of time is plotted as a function of the Sun's declination rather than as a function of date, the result is a figure known as the **analemma** (Figure 1.13).
The lopsided "figure eight" shape of the analemma is sometimes found printed on globes.
Perhaps more striking, if you take a multiple exposure photograph of the Sun, taking an exposure at the same time each day (as measured by a clock) throughout the year, the resulting Sun images trace out the shape of an analemma.
Such a photograph, taken from Arizona, is shown in Figure 1.14.
Analemma photographs provide graphic evidence that the length of the apparent solar day is variable; if its length were constant, then the analemma would be a straight line segment, not a warped figure eight.
The obvious next question is Why does the apparent solar day vary in duration?
"""

# ╔═╡ 11e313b0-20e0-49ee-b579-499a7ff44668
md"""
**Remark.**
The variation in length of the apparent solar day has two causes: the obliquity of the ecliptic (that is, the fact that ``\vec{ω}_\text{sid}`` and ``\vec{ω}_\text{E}`` are not parallel) and the nonuniform orbital speed of the Earth (that is, the fact that ``ω_\text{E}(t)`` varies with time).
"""

# ╔═╡ 36eac608-881f-4480-8a0c-ba4db26a3062
md"""
**Remark.**
The contribution of the obliquity of the ecliptic to the equation of time is shown as the dashed line in Figure 1.12.
"""

# ╔═╡ 05e8f6fa-497f-49e0-8d2e-8133c0df871a
md"""
**Remark.**
Even after switching from apparent to mean solar time, a remaining difficulty is that time is defined locally, not globally.
"""

# ╔═╡ bcfbe0ce-2d9d-4b6a-a939-a7fc3e4da936
md"""
**Remark.**
In 1883, the major railway companies of the United States and Canada simplified matters by adopting **time zones**, within which all clocks would strike noon simultaneuously.
"""

# ╔═╡ 0b680772-f5ac-4795-b971-567ae8b33962
md"""
**Remark.**
Astronomers, and other scientists, frequently want to use a time measure that is independent of the observer's position on Earth.
"""

# ╔═╡ 1d22441f-55e3-4035-9e14-3a3aef9d1293
md"""
**Remark.**
Until the twentieth century, the rotating Earth provided the ultimate basis for human measurements of time.
"""

# ╔═╡ 3015d465-7003-408b-a3bf-2bf8fba92f43
md"""
**Remark.**
We thus have an inherent tension between time as measured by highly accurate atomic clocks and time as measured by the not-quite-as-accurate clock provided by the rotating Earth.
"""

# ╔═╡ 65c0e2ef-6907-4c7e-ba06-9a44d9a6b144
md"""
**Remark.**
One might ask how a spin-down rate of only 0.0016 s century⁻¹ can lead to 34 leap seconds over a period of just over a century.
"""

# ╔═╡ f36549b2-8ec6-4815-8a87-0a2fecd9a4d0
md"""
**Remark.**
In addition to solar time, astronomers frequently find it useful to use an alternative time system, **sidereal time**.
"""

# ╔═╡ 5982c702-32e2-4e2b-9f9a-fdc0e0ed29d0
md"""
**Remark.**
Technically speaking, the **local sidereal time (LST)** is defined as the hour angle of the vernal equinox, which by definition has a right ascension ``α = 0``.
"""

# ╔═╡ f9454bfd-955e-4f65-a540-a86dbf3d5cfc
md"## 1.6 Calendars"

# ╔═╡ 3b85a6f3-95fb-4b87-a078-ce36d861bc87
md"""
**Remark.**
As mentioned in Section 1.4, having an accurate calendar is useful for an agrarian society.
"""

# ╔═╡ 42ddd525-d6a8-464d-aa94-54af224e60be
md"""
**Remark.**
The fact that the number of mean solar days in a tropical year, 365.24219, is not an integer led to a certain amount of difficulty when ancient cultures set up calendars.
"""

# ╔═╡ 77f01486-8f08-4112-8f0d-602c578f8e96
md"""
**Remark.**
The initial small difference between the Julian year and the tropical year accumulated with time, amount to one day every 128 years.
"""

# ╔═╡ 91d7ed6d-cbf0-489d-bda9-9723c2d33bd5
md"""
**Remark.**
In addition, the papal bull announced a new algorithm for computing leap days; years evenly divisble by 4 would contain a leap day *unless* the year was evenly divisible by 100 and not by 400.
"""

# ╔═╡ 9d2181f3-6336-45f9-ab6d-c20386026eb0
md"# 2 Emergence of Modern Astronomy"

# ╔═╡ 5ca631d1-d8c1-471f-8cf3-6c0f2452c9a5
md"""
**Remark.**
Modern astronomy has deep historical roots.
The main path of development for astronomy begins with the ancient Babylonians.
Greek astronomers built on the observations of the Bablyonians, creating a science of astronomy that was mathematical and deductive in nature.
Ancient knowledge about the heavens was preserved and expanded during medieval times by Arabic scientists.
During the Renaissance, the heliocentric theory of Copernicus led to additional advances by scientists such as Galileo and Kepler.
This lineage, Babylonians to Greeks to Arabs to Europeans, is a great oversimplification of the rich history of astronomy.
However, in a single chapter, we have only enough space for a broad overview of how modern astronomy evolved.
"""

# ╔═╡ eb489b70-b73f-41bd-820f-ee7744b7a183
md"## 2.1 Early Greek Astronomy"

# ╔═╡ 6f036974-a7cd-45b8-ada8-44aaf424633b
md"""
**Remark.**
Of the nine muses of classical mythology, eight dealt with various forms of music, dance, and poetry; the ninth muse, Urania, was the Muse of Astronomy.
This is indicative of the ancient Greek approach to astronomy: the motions of Sun, Moon, and planets were regarded as a type of cosmic dance, revealing an underlying rhythm and harmony.
A main goal of ancient Greek astronomers was to build, using deductive reasoning and mathematical computations, a conceptual model for the universe that explained the (sometimes complicated) motions of celestial bodies.
To provide a bit of clarification, when historians of science talk about "ancient Greek astronomy," they aren't talking solely about developments in the geographical region currently called Greence.
Rather, they embrace the entire Greek-speaking world, which in Hellenistic times, after the conquests of Alexander the Great, embraced much of the Mediterranean basin and the Near East.
"""

# ╔═╡ 3141c0ba-f547-4dde-bec5-cd4eedf9dcba
md"""
**Remark.**
Our knowledge of Greek astronomy, particularly in the time prior to Aristotle, is sadly fragmentary, due to the incompleteness of the written record.
Many early Greek astronomical works are lost and are known to have existed only because they were cited by later writers.
Some general aspects of Greek astronomy are well established, however.
For instance, the Greeks were the first known culture to realize that the sky is three-dimensional; that is, it has a significant depth.
Earlier societies, such as the Babylonians and Egyptians, thought that the sky was a thin, solid dome, arching over a flat Earth.
The most famous written description of such a domed universe is in the first book of Genesis: "God made the firmament, and divided the waters which were under the firmament from the waters which were above the firmament; and it was so.
And God called the firmament heaven."
Greek astronomers, however, realized that the Sun and Moon, instead of being disks stuck to a domed sky, were spherical objects, at different distances from the Earth.
"""

# ╔═╡ 9c6b54a9-b788-463b-bc22-33c9a1f01f7f
md"""
**Remark.**
The realization that space was three-dimensional led Greek astronomers to understanding of various celestial effects.
For instance, they correctly explained the causes of the **phases of the Moon**.
During the course of 29.5 days, the Moon appears to change in shape against the sky (see Figure 4.10b, for instance).
The Moon wanes from a full circle on the sky (the full Moon) through gibbous and crescent phases until it seems to disappear (the new Moon).
It then waxes through the crescent and gibbous phases until it reaches full Moon again, 29.5 days after the previous full Moon.
The ancient Greeks realized that the phases occur because the Moon is an opaque sphere illuminated by the Sun.
As the Moon orbits the Earth, we see different fractions o f the illuminated hemisphere of the Moon, causing the apparent change in shape.
"""

# ╔═╡ 6ca3bb19-9691-4f59-8d6f-ee61335dc0a4
md"""
**Remark.**
The Greeks also realized the cause of **eclipses**.
During a lunar eclipse, the Moon darkens dramatically; this is because the Moon passes through the Earth's shadow, depriving it of the sunlight that usually illuminates the Moon's surface.
During a solar eclipse, the Sun darkens dramatically; this is because the opaque Moon passes between the Earth and the Sun, blocking the sunlight that usually reaches the Earth's surface.
Thus, Greek astronomers realized that the Sun is farther away from us than the Moon is.
"""

# ╔═╡ fb533d27-94c5-4920-b395-a7361008bcde
md"""
**Remark.**
Aristotle (384--322 BC) was one of the great philosophers and scientists of the Greek world.
In his work *On the Heavens*, written around 350 BC, he turned his attention to astronomy.
In this work, Aristotle pointed out that the Earth was spherical and gave four physical reasons, based on observation, why this must be true.
His first reason was based on his observations of how gravity works: since gravity draws dense materials toward the center of the Earth, the resulting compression must squeeze the Earth's substance into as compact a form as possible---which is a sphere.
His second reason was based on observations of partial lunar eclipses: when the edge of the Earth's shadow falls on the Moon, it always forms an arc of a circle.
The only object that *always* casts a circular shadow is a sphere; thus, the Earth must be spherical.
"""

# ╔═╡ a3ca6c74-448e-4341-8916-c12fcbcac8f4
md"""
**Remark.**
His third reason was based on observing that new stars appear above the horizon when you head south toward the equator: on a spherical Earth, observers at a latitude ``ℓ`` north of the equator cannot see stars with declination ``δ < -90^∘ + ℓ``.
To take an example known in ancient times, the star Canopus ``(δ ≈ -53^∘)`` is invisible from Athens ``(ℓ ≈ 38^∘ \text{ N})`` but is visible from Alexandria, in Egypt ``(ℓ ≈ 31^∘ \text{ N})``.
This showed that the Earth was curved in the north--south direction, as a sphere would be.
His fourth reason was based on observing elephants: since elephants existed both in Morocco, the westernmost region known to Aristotle, and in India, the easternmost region known to him, the two regions must actually be adjacent to each other on the spherical surface of the Earth.
(This last, elephant-based reason sounds absurd to modern ears, but it's actually an illustration of how you can arrive at the right answer for the wrong reasons.)
"""

# ╔═╡ faec58b4-1a08-4da5-9958-882f8a678527
md"""
**Remark.**
The astronomer Aristarchus (ca. 310--230 BC) was notorious in his day for his unprecedented belief that the Earth orbits the Sun, rather than vice versa.
The only surviving book of Aristarchus, *On the Sizes and Distances of the Sun and Moon*, doesn't explicitly mention his **heliocentric** (Sun-centered) model for the universe; instead, it puts forward geometric methods for determining the relative distances to the Sun and Moon, and their relative sizes.
Aristarchus realized that when we, on the Earth, see half of the Moon's disk illuminated, then the Earth--Moon--Sun angle must be exactly 90°, as seen in Figure 2.1.
When the Earth--Moon--Sun angle is 90°, then the ratio of the Earth--Moon distance ``A`` to the Earth--Sun distance ``C`` is

$\frac{A}{C} = \cos{θ}, \tag{2.1}$

where ``θ`` is the measurable angle between the Sun and Moon as seen from the Earth.
Unfortunately, the angle ``θ`` is difficult to measure with sufficient accuracy, since the difference between ``θ`` and 90° is tiny.
Aristarchus thought the angle was ``θ = 87^∘``, which would give

$C = A / \cos{87^∘} = 19 A. \tag{2.2}$

However, the actual value of the angle is ``θ = 89.853^∘``, much closer to a right angle, which gives

$C = A / \cos{89.853^∘} = 390A. \tag{2.3}$

Because of the difficulty of measuring ``θ`` with sufficiently high accuracy, Aristarchus underestimated the distance to the Sun, relative to that of the Moon, by a factor of 20.
"""

# ╔═╡ 288486fc-b047-44d1-9073-180f95e3f6b2
md"""
**Remark.**
Nevertheless, Aristarchus did correctly deduce that the Sun is much farther away than the Moon is.
Since the Sun and the Moon are the same angular size as seen from Earth, we know from similar triangles that the ratio of their diameters is the same as the ratio of their distances from Earth.
That is, Aristarchus thought that the Sun was 19 times bigger than the Moon in diameter (whereas, the Sun is actually 390 times bigger than the Moon).
Aristarchus knew that the Moon was smaller than the Earth, since it fits inside the Earth's shadow during a total lunar eclipse.
Moreover, he calculated, by further geometric arguments, that the diameters of Moon, Earth, and Sun had the approximate relative values 1:3:19.
Again, although the exact numbers are wrong (they are actually closer to 1:4:390), Aristarchus correctly deduced that the Sun is much larger than the Earth, thus lending support to, or perhaps even inspiring, his heliocentric model for the universe.
It seemed sensible to Aristarchus that the small Earth should go around the large Sun rather than the reverse.
"""

# ╔═╡ 0e7fa250-4632-4dd2-a5d0-238b9a2de204
md"""
**Remark.**
Aristarchus deduced the relative sizes of the Moon, Earth, and Sun; absolute values for their sizes, in physical units, were provided by the work of Eratosthenes (276--195 BC), who served as the head librarian of the famous Library of Alexandria.
Although the original works of Eratosthenes have been lost, a later textbook by the astronomer Cleomenes records the method by which Eratosthenes determined the circumference of the Earth.
Eratosthenes was aware that exactly at noon at the time of the summer solstice, the Sun was at the zenith as seen from the town of Syene (the modern city of Aswan, in upper Egypt).
"""

# ╔═╡ 9904e07a-1716-419c-8ba4-8f3480caa985
md"""
**Remark.**
On the same date, however, the Sun doesn't pass through the zenith as seen from Alexandria; instead, as shown in Figure 2.2, it is an angle ``α`` south of the zenith at noon.
Eratosthenes measured the angle ``α`` and found it to be ``1/50`` of a full circle, or ``α = 7^∘ 12'``.
At this point, Eratosthenes assumed that the Earth is spherical (he had read his Aristotle) and that the Sun is far enough away that the Alexandria--Sun line is effectively parallel to the Syene--Sun line.
In that case, angle ``β`` in Figure 2.2 must be equal to angle ``α``.
Since ``β``, the angular distance between Alexandria and Syene, is equal to ``1/50`` of a full circle, the physical distance ``D`` between Alexandria must be ``1/50`` of the circumference of the Earth.
That is,

$C = 50D, \tag{2.4}$

where ``C`` is the circumference of the Earth.
The distance between Alexandria and Syene was known to be 5000 stades; the *stade* was a Greek unit of lenth, based on the length of the stadium in which foot rates were held.
This meant that the Earth's circumference was

$C = 50 × 5000 \text{ stades} = 250,000 \text{ stades}. \tag{2.5}$

The length of the stade was not uniform throughout the ancient world, and historians of science have had a grand time debating the exact length of the stade used by Eratosthenes.
Perhaps the most widely used stade at the time of Eratosthenes was the Attic, or Athenian, stade, equal in length to 185 meters.
If we assume that Eratosthenes used the Attic stade, then the circumference that he computed was

$C = 250,000 \text{ stades} \left(\frac{185 \text{ m}}{1 \text{ stade}}\right) = 4.6 × 10^7 \text{ m} = 46,000 \text{ km}. \tag{2.6}$

This is only 15% bigger than the correct value of 40,000 km.
Thus, by the time of Eratosthenes, Greek astronomers not only knew the Earth is spherical but also had a reasonably correct idea of its size.
"""

# ╔═╡ 0eaa5072-472d-44f4-91ba-33e99e090f25
md"""
**Remark.**
Hipparchus (ca. 190--120 BC) was perhaps the greatest astronomical observer during antiquity.
Hipparchus is credited with a number of accomplishments:

- He produced an accurate catalog of hundreds of star positions.

- He established the **magnitude** system for describing the brightness of stars.

- He computed a more accurate distance to the Moon.

- He measured the length of the tropical year with an error of less than 7 minutes.

The observations of Hipparchus were the basis of the Ptolemaic model for the universe, which dominated Western astronomoy for more than 14 centuries.
"""

# ╔═╡ 5fb59ee4-0f06-476d-bcf2-528bf17bfca8
md"## 2.2 Ptolemaic Astronomy"

# ╔═╡ 1ff4bcf1-22eb-41b6-9bac-3ef8ecc28ce9
md"""
**Remark.**
Claudius Ptolemaeus (called "Ptolemy" for short) lived and worked in Alexandria, Egypt, during the mid-second century AD.
The scanty details that we know about his life come from his surviving astronomical books.
His main work, which Ptolemy called *Mathematike Syntaxis* ("Mathematical Treatise") is better known by the name applied to it in the middle ages: the *Almagest*, a name that comes from an Arabic phrase meaning "the best."
As you might guess from its flattering nickname, the *Almagest* was the most highly regarded astronomical work in the Western world from the time it was written until the sixteenth century.
The main portion of the Almagest is devoted to a geometrical model that describes the motions of the stars, Sun, Moon, and planets as seen from Earth.
Before going into detail about Ptolemy's model, let's briefly review the motions of celestial bodies that he was attempting to explain.

- Stars move in diurnal circles about the celestial poles, with one complete circuit requiring one sidereal day.
  The stars are fixed in position relative to each other (this is only approximately true, but the relative motions of the stars are too gradual for the Greeks to have discovered).

- The Sun moves eastward relative to the stars along the ecliptic, which is tilted at 23.5° relative to the celestial equator.
  The average rate of motion is roughly 1° per day, but this varies over the course of a year.

- The Moon moves eastward relative to the stars along a path close to, but not identical with, the ecliptic.
  The average rate of motion is roughly 13° per day, but this varies over the course of a month.

- The planets Mercury, Venus, Mars, Jupiter, and Saturn usually move eastward relative to the stars, along a path close to the ecliptic; sometimes, however, they reverse course and move westward.
  An example of the **prograde** (eastward) and **retrograde** (westward) motion of Mars is shown in Figure 1.7.

Ptolemy's job was made unnecessarily complicated by the erroneous assumptions that he made.
First, he assumed that the Earth was stationary at the center of the universe.
In other words, the Ptolemaic model was **geocentric** (Earth-centered) rather than heliocentric (Sun-centered).
Second, he assumed that celestial bodies moved in perfect circles at constant sped.
This doctrine of **uniform circular motion** can be traced to early Greek philosophers such as Pythagoras and Plato.
They believed that the heavens were perfect, in contrast to the obviously imperfect Earth, and that heavenly bodies must therefore move in circles (which were regarded as a perfect shape) at a perfectly constant speed.
"""

# ╔═╡ a3ec733b-5414-4f16-a384-63a687bf0f4a
md"""
**Remark.**
Given these assumptions, explaining the apparent motions of the "fixed stars" was easy; Ptolemy assumed they were affixed to a rigid spherical shell, which rotated from east to west about the celestial poles, completing one rotation every sidereal day.
Explaining the apparent motion of the Sun was more difficult.
How could the nonuniform motion of the Sun along the ecliptic be reconciled with the dogma of uniform circular motion?
Ptolemy followed the example of his predecessors by using a concept known as the *eccentric*.
The Sun, Ptolemy assumed, moved along a circular orbit at a constant speed; however, the Earth was offset from the orbital center by a short distance.
This small offset was referred to as the orbit's eccentric.
As the Sun moves along the orbit at a constant physical speed, its angular speed as seen from Earth is greatest when it's closest to the Earth, and smallest when it's farthest from the Earth.
Ptolemy found that when he displaced the Earth from the orbital center by roughly 4% of the orbital radius, he could reproduce the observed motions of the Sun with fair accuracy.
"""

# ╔═╡ 583683d9-c773-4a3e-888d-d44320a733a8
md"""
**Remark.**
Although the eccentric can describe an angular speed that varies with time, it cannot describe retrograde motion, in which the angular speed of a planet actually changes sign, rather than simply slowing down and speeding up.
Ptolemy explained retrograde motion of a planet by using an **epicycle**, illustrated in Figure 2.3.
In the epicyclic model, a planet travels at a constant speed around a circular path called an epicycle.
At the same time, the center of the epicycle moves at a constant speed around the center of a larger circle called the **deferent**.
The combination of an epicycle and a deferent can produce retrograde motion.
Suppose the planet moves counterclockwise at a speed ``v`` around its epicycle, while the center of the epicycle moves counterclockwise at a speed ``w`` around its deferent, as shown in Figure 2.3.
When the planet is at the outside of its epicycle, its speed relative to the center of the deferent is ``v + w``; when it's at the *inside* of its epicycle, its speed is ``v - w``.
Thus, if ``w > v``, the planet is actually moving backward (or in retrograde) when it is closest to the center of the deferent.
A typical path traced out by a planet on an epicycle is shown in Figure 2.3.
By fiddling with the sizes of eccentrics and deferents, Ptolemy could get a fairly good fit to the observed motions of planetes on the celestial sphere, but not quite good enough.
His models were unable to match the observations exactly.
Eccentrics, deferents, and epicycles were ideas that Ptolemy had inherited from previous Greek astronomers.
However, in order to match the observations with the necessary accuracy, Ptolemy introduced a new device called the **equant**, illustrated in Figure 2.4.
"""

# ╔═╡ 619f4528-523f-45b2-862f-a9f5d6ea7505
md"""
**Remark.**
In Ptolemy's new construction, the Earth (labeled E in the figure) is offset from the center of the planet's deferent (labeled C) by a small distance.
Ptolemy dictated, however, that the center of the epicycle (labeled F) moved alon the deferent at a changing physical speed, such that its angular speed would be constant as seen from the **equant point** (labeled Q).
The equant (Q), orbital center (C), and Earth (E) lie along a straight line and are spaced so that the distance Q--C is equal to the distance C--E.
The concept of the equant stretched the doctrine of uniform circular motion to the absolute limit; according to Ptolemy's critics, it stretched beyond the limit.
Many medieval astronomers were dissatisfied by the rather contrived notion of the equant.
"""

# ╔═╡ a1722c6e-4702-49cc-a0b9-0ff5a0f370cf
md"""
**Remark.**
Nevertheless, Ptolemy's complete model for a planetary orbit, including a deferent, epicycle, and equant, had enough adjustable parameters to enable Ptolemy to make quite accurate predictions of the motions of planets as seen from Earth.
It is not clear that Ptolemy intended his complicated geocentric model to be an actual physical model of the cosmos.
It worked adequately as a mathematical model, which accounted for its popularity during medieval times; people wanted reasonably accurate predictions of the locations of the Sun, Moon, and planets, which the Ptolemaic model provided.
The fact that Ptolemy's model was geocentric also made it conceptually acceptable.
There were a number of plausible arguments, during Ptolemy's time and later, why a geometric model seemed correct:

- We cannot feel the motion of the Earth.
  A circumference of 250,000 stades implies a rotation speed at the Earth's equator of roughly 3 stades per second, or about 50 times the speed of the fastest sprinter.
  It seemed inconceivable that such a rapid speed should be imperceptible.

- The Earth's centrality and importance was somehow gratifying. (The Earth must be important; after all, we live on it.)

- **Stellar parallax** is not observed.
  This is the most serious scientific objection to a heliocentric model and deserves a fuller discussion, which is given below.

In general, the term **parallax** refers to the shift in apparent motion of an object when seen from two different locations.
For instance, if you hold up your thumb at arm's lenth and view it first through your right eye and then through your left, you will see your thumb's image jump from left to right by roughly 5° relative to objects in the background.
In astronomy, the term **geocentric parallax** refers to the shift in apparent position of a relatively nearby object, such as the Moon or a planet, when seen from two different points on the Earth's surface.
Geocentric parallax, illustrated in Figure 2.5a, is also referred to as **diurnal parallax**.
If you want to observe geocentric parallax, you don't have to go on an expedition; during the course of 12 hours, the daily (or diurnal) rotation of the Earth will carry you through a distance ``d = D \cos{ℓ}``, where ``D ≈ 12,700 \text{ km}`` is the Earth's diameter and ``ℓ`` is your latitude.
The closer an object is to the Earth, the larger its geocentric parallax will be.
The Moon shifts in apparent position by as much as 2° when viewed from antipodal points on the Earth; however, the Sun's corresponding shift in apparent position is smaller by a factor of 390, since the Sun is 390 times farther away than the Moon is.
Thus, the geocentric parallax of the Moon was easily measured by ancient astronomers (it's how Hipparchus measured the distance to the Moon, in fact), but the diurnal parallax of the Sun, and of the yet more distant stars, is too small to be measured by the naked eye.
"""

# ╔═╡ 4f4086b6-50ae-478a-9086-e48ed7ef2337
md"""
**Remark.**
The daily rotation of the Earth causes a change in position of an observer on the Earth; so does the annual revolution of the Earth around the Sun.
**Heliocentric parallax** is the shift in apparent position of a relatively nearby star when seen from two different points on the Earth's orbit.
Heliocentric parallax, illustrated in Figure 2.5b, is also referred to as **annual parallax**.
If you want to observe heliocentric parallax, you don't have to launch a spacecraft; during the course of half a year, the annual revolution of the Earth will carry you through a distance equal to the diameter of the Earth's orbit.
"""

# ╔═╡ 8be72844-01f1-4400-8b8e-313d95763204
md"""
**Remark.**
Before the invention of the telescope, astronomers attempted to measure the annual parallax of nearby stars but were unsuccessful.
They recognized two possible explanations for the lack of detectable annual parallax: either the Earth was stationary or the stars were so far away that the annual parallax, like the diurnal parallax, was too small to be measured.
Given the accuracy with which stellar positions could be measured in antiquity, Ptolemy and others deduced that if the solar system were heliocentric, then the nearest stars would have to be at a distsance of *at least* a few thousand times the Earth--Sun distance.
Such a large amount of empty space made astronomers uneasy.
They preferred the more compact geocentric model.
As we discuss further in Chapter 13, stellar parallax was not measured until long after the invention of the telescope.
Even the Sun's nearest neighbors among the stars are at a distance of 270,000 times the Earth--Sun distance.
The small, tidy Ptolemaic universe may have been psychologically comforting, but the universe is under no obligation to make us comfortable.
"""

# ╔═╡ cb2cb5c5-097e-48d0-9dc4-6aba3c79ba96
md"## 2.3 Copernican Astronomy"

# ╔═╡ e6985515-0d68-4f68-a7b7-8ff7562efb79
md"""
**Remark.**
The Polish astronomer Nicolaus Copernicus (1473--1543) was the first scientist since antiquity to advance a heliocentric model for the universe.
Copernicus was a Renaissance man metaphorically as well as chronologically; in addition to studying astronomy and mathematics, he also traveled to Italy in order to study medicine and law.
After taking minor orders in the Church, he served in a variety of administrative positions.
His work for the Church left Copernicus with enough time to make astronomical observations and work out his heliocentric model in detail.
By the year 1514, Copernicus was circulating a brief manuscript about his ideas among his friends; the grand summary of his work, the book *De Revolutionibus Orbium Coelestium* ("On the Revolutions of the Heavenly Spheres"), was not published until Copernicus was on his deathbed, in the year 1543.
"""

# ╔═╡ 735c6c96-5701-473c-8eb9-af8cf825a534
md"""
**Remark.**
The most radical aspect of the Copernican model was its insistence that the Sun, not the Earth, was at the center of the solar system (Figure 2.6), and that the Earth was both rotating about its axis and revolving about the Sun.
The Copernican model, however, also had conservative aspects.
For instance, Copernicus wholeheartedly embraced the dogma of uniform circular motion.
One of his proudest claims for his heliocentric model was that it eliminated the need for equants (however, to match the observations, it still needed eccentrics and epicycles).
"""

# ╔═╡ f7a7c5f8-45ae-45a2-bfd2-8cc811ea0ea1
md"""
**Remark.**
The Copernican model, although it retained eccentrics and epicycles, was conceptually simpler than the Ptolemaic model in many respects.
In the Copernican model, retrograde motion of the planets is accounted for by the fact that inner planets move faster along their orbits than the outer planets do.
Thus, as an inner planet, such as the Earth, overtakes an outer planet, such as Mars, the outer planet undergoes retrograde motion as seen from the inner planet.
This is demonstrated graphically in Figure 2.7.
In a heliocentric model, with the Earth being one of many planets orbiting the Sun, it is useful to divide the planets into two groups, based on their distance from the Sun compared to that of the Earth:

- **Inferior planets** are those with orbits smaller than the Earth's orbit, that is, Mercury and Venus.

- **Superior planets** are those with orbits larger than the Earth's orbit.
  Mars, Jupiter, and Saturn were the superior planets known at the time of Copernicus; the planetse Uranus and Neptune and the dwarf planets Ceres, Pluto, Haumea, Makemake, and Eris were not discovered until after the invention of the telescope.

In the Copernican model, the Earth is in motion around the Sun.
Thus, for an Earthly observer, the positions of planets are measured from a reference frame that is co-rotating with the Earth--Sun line.
It is particularly useful, as we shall see, to measure the position of planets on the celestial sphere relative to the Sun.
"""

# ╔═╡ 0f351457-99d4-4fed-ae62-80f284408da5
md"""
**Remark.**
Some special positions of the superior planets relative to the Sun are shown in Figure 2.8.
Names have been given to these special positions:

- **Opposition** occurs when the Earth lies between the Sun and the superior planet.
  That is, the Sun and planet are 180° apart on the celestial sphere as seen from the Earth.

- **Conjunction** occurs when the Sun lies between the Earth and the superior planet.
  That is, the Sun and planet are 0° apart as seen from the Earth.

- **Quadrature** occurs when the Sun and the superior planet are 90° apart as seen from the Earth.
  The quadrature can be either eastern, when the planet appears 90° east of the Sun on the sky, or western, when the planet appears 90° west of the Sun.

Although inferior planets cannot be seen in opposition or in quadrature, they do have two different conjunctions, as shown in Figure 2.9:

- **Inferior conjunction** occurs when the inferior planet lies between the Earth and the Sun.

- **Superior conjunction** occurs when the Sun lies between the Earth and the inferior planet.
"""

# ╔═╡ feefde57-d98f-467a-8396-ec7688be50e9
md"""
**Remark.**
When a planet is not in conjuction, it is separated from the Sun on the celestial sphere by an angle ``θ`` referred to as the planet's **elongation**.
"""

# ╔═╡ 9426002b-1357-45b6-afef-3849e2a04e0a
md"""
**Remark.**
One of the happy results of the Copernican model is that it enabled Copernicus to compute the orbital periods of the planets, relative to the Earth's orbital period, and compute the size of planetary orbits, relative to the size of the Earth's orbit.
"""

# ╔═╡ 795080d4-f256-4fd4-980a-e8f04321a7f5
md"""
**Remark.**
As seen from the Earth, planets undergo motion that can be described as periodic; that is, there is a fixed time interval between consecutive appearances of a particular planetary configuration.
This time interval, known as the **synodic period** of the planet, can be found by measuring the time elapsed between successive conjunctions (for a superior planet) or the time elapsed between successive inferior conjunctions (for an inferior planet).
The synodic period is different from the **sidereal period** of the planet, which is the time it takes the planet to complete one full circuit of the sky relative to the fixed stars.
The synodic period of a planet is longer than its sidereal period for much the same reason that the solar day is longer than the sidereal is the Earth's rotation period in the nonrotating frame of reference of the distant stars (the sidereal frame); the solar day is the Earth's rotation period in a frame of reference co-rotating with the Earth--Sun line.
Similarly, the sidereal period of a planet is the planet's orbital period in the nonrotating sidereal frame; the synodic period is its orbital period in a frame of reference co-rotating with the Earth--Sun line.
"""

# ╔═╡ b5d30d8e-de93-49fb-98ef-e29285d49fbd
md"""
**Remark.**
As in equation (1.1), let ``\vec{ω}_\text{E}`` be the angular velocity of the Earth's orbital motion in the sidereal frame; let ``\vec{ω}_\text{P}`` be the angular velocity of the planet's orbital motion in the same frame.
Figure 2.10 shows the orbital motions of the Earth and an inferior planet; for an inferior planet, ``ω_\text{P} > ω_\text{E}``.
The difference between these two angular velocities is ``\vec{ω}_\text{syn}``, the angular velocity of the planet's orbital motion in the frame co-rotating with the Earth--Sun line.
Specifically, we see that

$\vec{ω} = \vec{ω}_\text{E} + \vec{ω}_\text{syn}. \tag{2.7}$

If ``\vec{ω}_\text{P}`` and ``\vec{ω}_\text{E}`` are parallel (that is, if the orbits of the Earth and the planet are coplanar and they orbit in the same direction about the Sun), we may write, for an inferior planet,

$\begin{align*}
ω_\text{P} &= ω_\text{E} + ω_\text{syn} \\
\frac{2π}{P_\text{P}} &=  \frac{2π}{P_\text{E}} + \frac{2π}{P_\text{syn}} \\
\frac{1}{P_\text{P}} &= \frac{1}{P_\text{E}} + \frac{1}{P_\text{syn}}. \tag{2.8}
\end{align*}$

In equation (2.8), ``P_\text{E}`` is the sidereal orbital period of the Earth, ``P_\text{P}`` is the sidereal orbital period of the inferior planet, and ``P_\text{syn}`` is the synodic orbital period of the inferior planet, as seen from Earth.
As an example of an inferior planet, consider Venus.
The synodic period of Venus is measured to be ``P_\text{syn} = 583.92`` days.
The Earth's sidereal orbital period is ``P_\text{E} = 365.256`` days.
We can then compute the sidereal period of Venus:

$P_\text{Venus} = \left[\frac{1}{365.256 \text{ days}} + \frac{1}{583.92 \text{ days}}\right]^{-1} = 224.70 \text{ days}. \tag{2.9}$
"""

# ╔═╡ 740531b0-6b9f-437a-b84f-450630640646
md"""
**Remark.**
In the case of a superior planet, ``ω_\text{P} < ω_\text{E}``.
If we refer to Figure 2.11, we see that ``\vec{ω}_\text{syn}`` is in the opposite sense to ``\vec{ω}_\text{E}`` and ``\vec{ω}_\text{P}``.
Equation (2.8) then becomes, for a superior planet,

$\begin{align*}
ω_\text{P} &= ω_\text{E} - ω_\text{syn} \\
\frac{1}{P_\text{P}} &= \frac{1}{P_\text{E}} - \frac{1}{P_\text{syn}}. \tag{2.10}
\end{align*}$

As an example of a superior planet, consider Mars.
The synodic period of Mars is measured to be ``P_\text{syn} = 779.95`` days.
Given the length of the sidereal period of Earth, ``P_\text{E} = 365.256`` days, we compute the sidereal period of Mars to be

$P_\text{Mars} = \left[\frac{1}{365.256 \text{ days}} - \frac{1}{779.95 \text{ days}}\right]^{-1} = 686.98 \text{ days}. \tag{2.11}$
"""

# ╔═╡ bb91d852-a235-43ca-abe9-117e97e2c3d2
md"""
**Remark.**
In addition to permitting a determination of a planet's sidereal orbital period, the Copernican model also permits us to compute the distance of each planet from the Sun.
For an inferior planet, this computation is straightforward.
We need only measure the inferior planet's **greatest elongation**, that is, the maximum angular separation between the planet and Sun as seen from the Earth.
As shown in Figure 2.12, if we approximate the orbit of the inferior planet as a perfect circle, then greatest elongation occurs when the line of sight from the Earth to the planet is exactly tangent to the planet's orbit.
When that happens, the angle Earth--planet--Sun is a right anle, as the figure shows.
The distance ``B`` from the planet to the Sun is then given by the relation

$B / C = \sin{θ}, \tag{2.12}$

where ``θ`` is the angle of greatest elongation and ``C`` is the Earth--Sun distance.
This method, therefore, only gives the radius of the planet's orbit in units of the Earth--Sun distance.
The average distance from the Earth to the Sun is of such importance to astronomers that it is given the name **astronomical unit**, or **AU** for short.
Copernicus, like the Greek astronomers before him, did not have an accurate knowledge of the absolute length of the astronomical unit.
However, he did know the *relative* sizes of the planets' orbits.
For instance, the greatest elongation of Venus is ``θ = 46^∘``, so its orbital radius is

$B = (\sin{46^∘})(1 \text{ AU}) = 0.72 \text{ AU}. \tag{2.13}$
"""

# ╔═╡ 0dd17259-555b-4512-810e-12c4cf8f666d
md"""
**Remark.**
The size of the orbits of superior planets can be determined by a similar but slightly more complicated method.
First, we must mesaure the time interval ``τ`` between opposition and eastern quadrature of the superior planet.
As shown in Figure 2.13, the angle swept out by the Earth during the time interval ``τ`` is ``ω_\text{E} τ``, where ``ω_\text{E}`` is the angular speed of the Earth's orbital motion.
Over the same time interval, the superior planet (assumed to be Mars in the figure) sweeps out an angle ``ω_\text{P} τ``, where ``ω_\text{P}`` is the angular speed of the planet's orbital motion.
The difference between these angles is the angle ``θ = (ω_\text{E} - ω_\text{P}) τ`` shown in the figure.
When Mars is at quadrature, the angle Mars--Earth--Sun is a right angle, so we have the relation

$C / B = \cos{θ}, \tag{2.14}$

where ``C`` is the Earth--Sun distance and ``B`` is the Mars--Sun distance.
In the case of Mars, the time from opposition to eastern quadrature is ``τ = 107`` days.
Thus, the angle ``θ`` is

$\begin{align*}
θ &= \left(\frac{2π}{P_\text{E}} - \frac{2π}{P_\text{Mars}}\right) τ \\
&= 2π \left(\frac{1}{365.256 \text{ days}} - \frac{1}{686.98 \text{ days}}\right) (107 \text{ days}) \\
&= 0.862 \text{ rad} \left(\frac{180^∘}{π \text{ rad}}\right) = 49^∘. \tag{2.15}
\end{align*}$

The distance from Mars to the Sun is then

$B = \frac{C}{\cos{θ}} = \frac{1 \text{ AU}}{\cos{49^∘}} = 1.52 \text{ AU}. \tag{2.16}$

Table 2.1 shows the sidereal orbital period and the orbital radius for each of the planets and dwarf planets in the solar system (including those that were unknown at the time of Copernicus).
"""

# ╔═╡ feb0fb51-a2e2-4124-860f-8c08d157d24c
md"## 2.4 Galileo: The First Modern Scientist"

# ╔═╡ b0517cbe-6a93-483d-9fbe-519531bfc5c8
md"""
**Remark.**
Both the Ptolemaic and Copernican models could explain the observed motions of the Sun, Moon, and planets on the celestial sphere.
Why, then, should one believe that the Earth is in motion rather than the Sun?
We know now that the Earth does orbit the Sun rather than vice versa, but direct experimental proof of the Earth's orbital motion was not provided until the eighteenth century, nearly two centuries after the death of Copernicus.
Nevertheless, the heliocentric model came to be accepted without direct proof.
This was partly because of its elegant simplicity; the motions of the planets are less complicated in a heliocentric model than in a geocentric model.
This is an application of the general principle often referred to as **Occam's Razor**.
In its typically quoted form, Occam's Razor states that "the simplest description of Nature is most likely to be most nearly correct."
In other words, unnecessary complications should be "shaved away" from a theory.
Of course, when using a razor, it is important to not cut too deep; Albert Einstein is said to have rephrased Occam's Razor in the form "Everything should be made as simple as possible... but not simpler."
"""

# ╔═╡ 73283d0a-030a-4503-88a9-35d964ce69d4
md"""
**Remark.**
In addition to the aesthetic appeal of the heliocentric model's relative simplicity, compelling indirect evidence for heliocentrism was provided by the telescopic observations of Galileo Galilei (1564--1642).
Galileo is sometimes called the first modern experimental physicist.
Instead of relying purely on the pronouncements of Aristotle, Galileo tried to understand how nature works by carrying out experiments, such as swinging pendulums back and forth, and sliding weights down inclined planes.
Although Galileo didn't invent the telescope, he was among the first individuals to use a telescope as a scientific instrument.
The actual inventor of the telescope may possibly have been a Dutch optician called Hans Lippershey.
In October 1608, Lippershey applied for a patent on what he called a *kijker*, or "looker" in English.
The patent was denied by the Dutch government, however, on the grounds that "many other persons had a knowledge of the invention."
Indeed, news of the telescope reached Galileo in Italy as early as May 1609; soon thereafter, he built several telescopes, each superior to the one before.
"""

# ╔═╡ 43cce8b1-e118-467c-bbc3-780276fe26bf
md"""
**Remark.**
Although Galileo's telescopes had apertures of only an inch or two, they provided Galileo with many important observations.
Galileo, knowing the potentially revolutionary impact of his discoveries, rushed into print in March 1610 with a pamphlet entitled *Sidereus Nuncius* ("Starry Messenger").
Many of Galileo's observations were startling to his contemporaries:

- The Moon is not smooth and perfect.
  Instead, as Galileo wrote, it is "uneven, rough, and crowded with depressions and bulges. And it is like the face of the Earth itself, which is marked here and there with chains of mountains and depths of valleys."
  In other words, there is not a vast difference between the Earth's surface and that of a celestial object, namely the Moon.

- The Milky Way, the nebulous band of light that extends around the sky, actually consists of numerous faint stars.
  "To whatever region of it you direct your spyglass," Galileo wrote, "an immense number of stars immediately offer themselves to view."

- Through a telescope, stars remain unresolved points, but planets show as disks.
  As Galileo put it, "the planets present entirely smooth and exactly circular globes that appear as little moons."
  (Unfortunately for astronomers, even the nearest stars are too distant to be resolved with conventional telescopes, even telescopes much larger than Galileo's.)

- The planet Jupiter has four large, bright satellites.
  Although Galileo called these satellites the "Medicean Stars," in honor of Cosimo de Medici, Grand Duke of Tuscany, later astronomers named them the **Galilean satellites**.
  The individual names of the four Galilean satellites are Io, Europa, Ganymede, and Callisto.

The Galilean satellites of Jupiter, shown in Figure 2.14 were an indirect piece of support for the Copernican system.
One objection to a heliocentric model was that it required multiple centers of motion; the Earth went around the Sun while the Moon went around the Earth.
This was regarded as more complex than a geocentric model in which everything goes around the Earth.
However, Galileo provided clear evidence that there *had* to be multiple centers of motion; obviously, the Galilean satellites were going around Jupiter, regardless of whether Jupiter was going around the Sun or around the Earth.
"""

# ╔═╡ 46ffbc15-80a4-4a86-9c76-ef37a03bd79c
md"""
**Remark.**
By the end of the year 1610, Galileo made another telescopic discovery that further undermined the Ptolemaic model.
He found that Venus went through all the phases that the Moon did, from full to new.
Moreover, he found that the angular size of Venus was smallest when it was full and largest when it was a thin crescent.
The phases of Venus, illustrated by Galileo in his later work *Il Saggiatore*, are shown in Figure 2.15.
Ptolemy, in his geocentric sytem, had the task of explaining why Venus should always lie within 46° of the Sun if the two bodies were on independent orbits around the Earth.
Ptolemy managed it by saying that the center of Venus's epicycle always lies directly between the Earth and the Sun (as shown in Figure 2.16b) and that the epicycle is big enough to subtend an angle of 92° as seen from Earth.
The geometry of this situation requires that we see primarily the nighttime side of Venus, that is, the side away from the Sun.
In the Ptolemaic system, then, we would always see a new or crescent phase for Venus, as illustrated in Figure 2.16b, top.
"""

# ╔═╡ 100e29d9-994b-454b-b74b-da92980f55e5
md"""
**Remark.**
Galileo demonstrated, however, that we see gibbous and full Venuses, as well as crescent and new Venuses.
This is easily explained in the Copernican system, as shown in Figure 2.16a.
In the Copernican model, the sunlit side of Venus is turned toward us when Venus is at superior conjunction; this is when Venus is at its greatest distance from Earth, and hence has its smallest angular size.
Conversely, the nighttime side of Venus is turned toward us when it is at inferior conjunction, when it is closest to Earth and has its largest angular size
This is in accord with the observations of Galileo.
"""

# ╔═╡ 7f457a71-fa65-46c8-9afe-09d7258ede91
md"## 2.5 Kepler's Laws of Planetary Motion"

# ╔═╡ 83dc7c7a-a1d1-4ed8-a0ae-cf508158d86d
md"""
**Remark.**
As increasingly accurate observations of planetary motions were made, the flaws of both the Ptolemaic and Copernican models became more evident.
Tycho Brahe (1546--1601) was probably the greatest astronomical observer prior to the invention of the telescope; it was his observations of planetary motions that both revealed the inadequacy of the Copernican system and provided the necessary data for calculating the true nature of planetary orbits around the Sun.
Tycho was a Danish aristocrat and received large sums of money from the King of Denmark to set up an elaborate observatory on the island of Hven, near Copenhagen.
For more than 20 years, Tycho observed the positions of planets and stars with an accuracy of 1 arcminute.
Interestingly, Tycho did not believe that the heliocentric model was correct.
He noted, as did the Greeks before him, that the stars do not show parallax.
The absence of parallaxes larger than 1 arcminute implies that the nearest stars must be farther away than a few thousand AU, given a heliocentric solar system.
Tycho thought this distance was implausibly large and thus devised a compound system in which all the planets other than the Earth went around the Sun, while the Sun orbited the Earth, carrying its entourage of planets along with it.
"""

# ╔═╡ 8d30fb1f-a390-476f-a163-662cef8f6735
md"""
**Remark.**
In the year 1599, after a major falling-out with the Danish king, Tycho accepted a post as Imperial Mathematician to the Holy Roman Emperor in Prague.
There he hired a new assistant named Johannes Kepler (1571--1630).
Initially, Kepler was frustrated by Tycho's reluctance to share his data.
However, Kepler soon had complete access to Tycho's observations; in October 1601, less than two years after Kepler arrived in Prague, Tycho died, and Kepler was appointed his successor as Imperial Mathematician.
By using Tycho's observations of the planet Mars, and by doing several years' worth of calculations, Kepler was able to formulate a mathematical description of its orbit, and by extension, the orbits of other planets.
His basic findings are encapsulated in **Kepler's laws of planetary motion**.

1. **Kepler's first law:**
   *Planets travel on elliptical orbits with the Sun at one focus.*
   The properties of the closed curve known as an **ellipse** are best described by explaining how to draw one (Figure 2.17).
   Take a piece of string and tie each end to a pin.
   Stick the pins into a piece of paper, separated by a distance less than the string's length.
   Use a pencil to stretch the string taut and draw a complete, closed curve; this is an ellipse.
   The two pins are located at the **foci** of the ellipse.
   Expressed mathematically, the ellipse is the locus of points for which the sum of the distances to the foci is a constant (equal to the length of the string, in our graphic example).
   If the pins are moved closer together, for a given length of string, the ellipse becomes more nearly circular; if they are moved farther apart, the ellipse becomes more flattened.

   The longest distance across the ellipse (which passes through both foci) is called the **major axis**.
   The shortest distance across the ellipse, passing through the ellipse's center, is called the **minor axis**.
   The **semimajor axis** is the half major axis, and the **semiminor axis** is half the minior axis.
   The **eccentricity** of the ellipse is the distance between the foci divided by the length of the major axis.
   If the foci coincide, then ``e = 0``, and the ellipse is a circle.
   The other limiting case, ``e = 1``, represents the case in which the foci are separated by the full length of the string.
   It was quite a feat for Kepler to discover the elliptical shape of planetary orbits, since most planets have orbits with small eccentricity.
   Of the planets known to Kepler, Mercury had the largest eccentricity, ``e = 0.21``; all the others had ``e < 0.1``.

2. **Kepler's second law:**
   *A line drawn from the Sun to a planet sweeps out equal areas in equal time intervals.*
   This law provides a quantitative description of how the orbital speed of planets changes with their distance from the Sun; not only is motion not circular, Kepler discovered, it doesn't have uniform speed, either.
   The second law is graphically demonstrated in Figure 2.18.
   A mythical planet has its motion plotted during two time intervals, each 10 days long, separated by half the planet's orbital period.
   The two wedge-shaped areas swept out by the planet--Sun line are of equal area, even though they are of different shape.
   Kepler's second law implies that the planets move most rapidly at **perihelion**, the point on their orbit closest to the Sun, and least rapidly at **aphelion**, the point farthest from the Sun.
   As we show in Section 3.1, Kepler's second law is a simple consequence of the conservation of angular momentum.

3. **Kepler's third law:**
   *The squares of the sidereal orbital periods of the planets are proportional to the cubes of the semimajor axis of their orbits.*
   Kepler's third law can be expressed more compactly in the mathematical notation:

   $P^2 = Ka^3, \tag{2.17}$

   where ``P`` is a planet's sidereal orbital period, ``a`` is the length of the semimajor axis of its orbit, and ``K`` is a constant.
   For objects orbiting the Sun,

   $K = 1 \text{ yr}^2 \text{ AU}^{-3}. \tag{2.18}$

   A plot of orbital period versus semimajor axis (like that of Figure 2.19) shows that all planets in the solar system, even those unknown to Kepler, follow his third law.
   In addition, Figure 2.19 shows that the Galilean satellites of Jupiter also obey equation (2.17), but with ``K ≈ 1050 \text{ yr}^2 \text{ AU}^{-3}`` rather than ``K ≈ 1 \text{ yr}^2 \text{ AU}^{-3}``.
"""

# ╔═╡ 03a9e380-7f88-4406-947c-f1a251d23c80
md"## 2.6 Proof of the Earth's Motion"

# ╔═╡ 88cef74e-74ff-47e9-8a45-4af872e9174e
md"""
**Remark.**
Although Galileo's discoveries convinced many individuals that the heliocentric model was correct, definitive proof that the Earth revolves around the Sun and rotates on its axis wasn't provided until much later.
The rotation of the Earth about its axis was proved by detecting the Coriolis effect; this was done most famously by Jean Foucault, using what is now called a Foucault pendulum.
The revolution of the Earth about the Sun was proved by detecting the effect known as aberration of starlight; later confirmation came from measuring the annual parallax of nearby stars.
"""

# ╔═╡ baeb4fed-937a-4f86-bf76-b6d1f00b60bf
md"### 2.6.1 Rotation of the Earth"

# ╔═╡ d4e2dd94-16f7-4c74-bb79-1d294208ce31
md"""
**Remark.**
When we measure the trajectory of a projectile (such as a bullet or a thrown ball), we are measuring the trajectory relative to the Earth's surface.
However, because of the Earth's rotation, any set of coordinates fixed to the Earth's surface is rotating with an angular velocity ``\vec{ω}``.
The magnitude of ``\vec{ω}`` is ``ω ≈ 2π \text{ day}^{-1} ≈ 7.3 × 10^{-5} \text{ s}^{-1}``, and the direction of ``\vec{ω}`` is pointing from south to north, parallel to the Earth's rotation axis.
By watching the motion of the projectile, we can detect the Earth's rotation; its trajectory in the Earth's rotating frame of reference is subtly different from what it would be in a nonrotating frame of reference.
"""

# ╔═╡ a0bb8cb0-b40e-463a-9cb5-6b09a890021c
md"""
**Remark.**
To quantify the difference in trajectories, let's start by writing down the relevant equations of motion.
In a nonrotating frame, the motion of an object is famously given by Newton's second law of motion:

$\vec{𝐚} = \vec{𝐅}/m, \tag{2.19}$

where ``\vec{𝐚}`` is the measured acceleration of the object, ``\vec{𝐅}`` is the net force applied, and ``m`` is the object's mass.
However, the equation of motion is different when the acceleration ``\vec{𝐚}`` is measured in a frame of reference rotating with angular velocity ``\vec{ω}``:

$\vec{𝐚} = \vec{𝐅}/m = 2(\vec{𝐯} × \vec{ω}) - \vec{ω} × (\vec{ω} × \vec{𝐫}), \tag{2.20}$

where ``\vec{𝐯}`` is the object's velocity and ``\vec{𝐫}`` is the object's position, both measured in the rotating frame of reference.
"""

# ╔═╡ e3c7382d-5527-4a2f-9dd6-d00410d54172
md"""
**Remark.**
The last term on the right-hand side of equation (2.20) is called the **centrifugal** acceleration.
The centrifugal acceleration points away from the rotation axis, and has a magnitude

$a_\text{cent} = |\vec{ω} × (\vec{ω} × \vec{𝐫})| = ω^2 R, \tag{2.21}$

where ``R`` is the distance of the object from the rotation axis of the frame of reference.
In other words, when we rotate with the Earth, we see objects at a distance ``R`` from the Earth's rotation axis move in diurnal circles of physical radius ``R``; motion in a circle of radius ``R`` with uniform angular speed ``ω`` requires an acceleration ``a = ω^2 R``.
For objects near the Earth's surface, the centrifugal acceleration is greatest at the equator, where ``R ≈ 6.4 × 10^6 \text{ m}`` is equal to the Earth's radius.
This implies a centrifugal acceleration near the equator of

$a_\text{cent} = ω^2 R ≈ (7.3 × 10^{-5} \text{ s}^{-1})^2 (6.4 × 10^6 \text{ m}) ≈ 0.034 \text{ m s}^{-2}. \tag{2.22}$

This is not a large acceleration.
In the jargon of auto advertisements, it would take you from "zero to sixty mph" in 13 minutes.
More relevantly in this context, ``a_\text{cent}`` is small compared to the gravitational acceleration at the Earth's surface, ``g = 9.8 \text{ m s}^{-2}``.
In principle, traveling from the poles to the equator should reduce your acceleration toward the Earth's center, and thus reduce your weight.
However, the fractional weight loss will be only ``a_\text{cent}/g ≈ 0.003``.
"""

# ╔═╡ 3a35b99c-d19a-4236-a68d-0300dbfa8165
md"""
**Remark.**
The middle term on the right-hand side of equation (2.20) is called the Coriolis acceleration, or the **Coriolis effect**, after a French scientist named Gustave Coriolis, who published the equations of motion for a rotating frame in the year 1835.
It is sometimes computationally convenient to think of the Coriolis acceleration,

$\vec{𝐚}_\text{cor} = 2 (\vec{𝐯} × \vec{ω}), \tag{2.23}$

as being due to a fictitious "Coriolis force" equal to ``2m(\vec{𝐯} × \vec{ω})``.
In truth, however, no physical force is being applied to the particle; the Coriolis acceleration results from the fact that the particle is being observed from a rotating, and hence accelerated, reference frame.
The cross-product in equation (2.23) tells us that the Coriolis acceleration is always perpendicular to the direction of motion of the particle.
When the cross-product is worked out in detail, it is seen that a moving particle is deflected to its right in the northern hemisphere and to its left in the southern hemisphere as Figure 2.20 demonstrates.
"""

# ╔═╡ 63284f62-b332-4810-af97-b308b34fc334
md"""
**Remark.**
The magnitude of the Coriolis acceleration is

$a_\text{cor} = 2v ω \sin{\Theta}, \tag{2.24}$

where ``\Theta`` is the angle between ``\vec{𝐯}`` and ``\vec{ω}``.
Thus, the Coriolis effect is maximized when the particle's motion is perpendicular to the Earth's rotation axis; it vanishes when the particle's motion is parallel to the rotation axis.
For other directions of motion, we may make the rough approximation

$a_\text{cor} ∼ vω. \tag{2.25}$

If a particle is in flight for a time ``\Delta t``, its velocity will be altered by a fractional amount

$\frac{\Delta v}{v} ∼ \frac{a_\text{cor} \Delta t}{v} ∼ ω \Delta t. \tag{2.26}$

Thus, the change in the particle's direction of motion will be small as long as its time of flight is much shorter than

$ω^{-1} ∼ \frac{1}{2π} \text{ days} ∼ 4 \text{ hr} ∼ 14,000 \text{ s}. \tag{2.27}$

Usually, when a ball is thrown or a bullet is fired, it reaches its target within a few seconds, so the Coriolis effect is negligible.
However, the Coriolis acceleration can significantly affect the ballistic trajectory of projectiles when the time of flight is sufficiently long.
During the projectile's flight, it will be deflected by a distance

$\Delta d ∼ \frac{1}{2} a_\text{cor} (\Delta t)^2 ∼ \frac{1}{2} vω(\Delta t)^2, \tag{2.28}$

to the right of its initial trajectory in the northern hemisphere and to the left in the southern hemisphere.
During World War I, for instance, the German army used an immense artillery gun to bombard Paris from a distance of ∼ 120 km.
The Paris Gun had a muzzle velocity ``v ∼ 1.6 \text{ km s}^{-1}``; shells were sent on a parabolic trajectory with a maximum altitude of ∼ 40 km and a time of flight ``\Delta t ∼ 170 \text{ s}``.
This led to a deflection

$\Delta d ∼ \frac{1}{2} vω(\Delta t)^2 ∼ 2 \text{ km}, \tag{2.29}$

to the right of where the gun was aimed.
"""

# ╔═╡ 3a74d4ca-af65-4592-b755-a2bff038ad0b
md"""
**Remark.**
The Coriolis acceleration also affects wind patterns.
As air moves inward toward an area of low pressure, the Coriolis acceleration causes it to swerve to the right (in the northern hemisphere of Earth), and sets up a counterclockwise circulation.
As a consequence, hurricanes in the northern hemisphere rotate counterclockwise; conversely, circular storms in the southern hemisphere rotate clockwise.
Urban legend to the contrary, water draining from a sink doesn't invariably spiral counterclockwise in the northern hemisphere and clockwise in the southern hemisphere.
Draining a sink takes much less time than forming a hurricane; during the time it takes a sink to empty, the ``\Delta v`` caused by the Coriolis effect remains small compared to the speed of the eddies that form as you fill the sink and wash your hands.
"""

# ╔═╡ ee9a4335-9d6b-4c34-b4dd-0e86a584a9da
md"""
**Remark.**
A celebrated demonstration of the Coriolis effect is the **Foucault pendulum**, first demonstrated in the year 1851 by a French scientist named Jean Foucault.
A Foucault pendulum is nothing more than a long pendulum suspended from a ball-and-socket joint overhead, so it is free to swing in any direction.
Although Foucault set up his own pendulum in Paris, it is easier to visualize the principle behind the Foucault pendulum if we image one installed at the Earth's north pole (Figure 2.21).
If we set the pendulum oscillating, it will continue to oscillate back and forth in the same place, as viewed by a nonrotating observer.
Thus, a sidereal nonrotating observer would report, "The Earth rotates counterclockwise (viewed from above the Earth's north pole), completing one rotation in a sidereal day; the plane of the pendulum's oscillation is not rotating."
However, an observer co-rotating with the Earth would report, "The Earth is not rotating with respect to my frame of reference; the plane of the pendulum's oscillation is rotating clockwise (viewed from above the Earth's north pole), completing one rotation in a sidereal day."
"""

# ╔═╡ a9e52974-125b-4763-895d-5bf4cd9cc21a
md"""
**Remark.**
Analyzing the rotation of a Foucault pendulum at locations other than the north or south pole requires a more detailed analysis of the Coriolis acceleration of the pendulum bob; the result found is that the pendulum's plane of oscillation rotates at a rate ``2π \sin{ℓ}`` radians per sidereal day, where ``ℓ`` is the latitude at which the Foucault pendulum is located.
(This accounts for the popularity of Foucault pendulums at high-latitude science museums; near the equator, the excruciatingly slow rotation of a Foucault pendulum is a less visually exciting demonstration of the Earth's rotation.)
"""

# ╔═╡ b8329e68-f11d-49ca-9df0-f13bf1c6dcd3
md"### 2.6.2 Revolution of the Earth"

# ╔═╡ 0157bdab-32f4-4f0b-95df-0e0745ba829f
md"""
**Remark.**
The **aberration of starlight** was first detected by Jean Picard in 1680, but it wasn't explained until 1729, by the astronomer James Bradley.
The aberration of starlight is an effect that causes the apparent positions of stars on the celestial sphere to be deflected in the direction of the observer's motion.
The common analogy to explain the aberration of starlight involves running through a rainshower with an umbrella; even if the rain is falling straight down, you have to tilt your umbrella in the direction of motion in order to keep your head dry.
Similarly, in order to catch photons from a distant star, you have to tilt your telescope in the direction of motion (Figure 2.22).
Photons travel at a large but finite speed, ``c = 3.0 × 10^5 \text{ km s}^{-1}``.
The orbital speed of the Earth averages ``v = 29.8 \text{ km s}^{-1} ≈ 10^{-4} c``.
If your telescope is 1 m long, then during the time it takes light to pass through the telescope, the Earth's motion will have translated the telescope through a distance of 0.1 mm.
Figure 2.22 shows that the angle through which the telescope must be tilted is given by the relation

$\tan{θ} = v/c. \tag{2.30}$

Since the Earth's speed is so much smaller than the speed of light, we may use the small-angle approximation:

$θ ≈ \frac{v}{c} ≈ \frac{29.8 \text{ km s}^{-1}}{3.0 × 10^5 \text{ km s}^{-1}} \left(\frac{180^∘}{π \text{ rad}}\right)\left(\frac{3600''}{1^∘}\right)
 ≈ 20.5''. \tag{2.31}$

Aberration of starlight causes the positions of stars in the sky to follow an annual path that is the projection of the Earth's motion onto the sky: an ellipse of semimajor axis ``20.5''`` and a semiminor axis ``20.5''β``, where ``β`` is the angular distance of the star from the ecliptic.
"""

# ╔═╡ 6c819765-1838-4064-9e6f-cb92500bc7f9
md"""
**Remark.**
**Stellar parallax** was introduceed earlier, on page 37, when we emphasized the fact that observers couldn't detect it prior to the invention of the telescope.
In fact, even after the invention of the telescope, it took a long time before stellar parallax was first measured.
It wasn't until 1838, more than two centuries after the first telescopes, that the astronomer Friedrich Wilhelm Bessel announced that he had finally measured the annual parallax of a star.
Formally, astronomers define parallax ``π''`` (Figure 2.23) as the apparent displacement of a star, in arcseconds, due to a change in position of the observer by 1 AU perpendicular to the line of sight to the star.
Although parallaxes are defined in terms of a 1 AU displacement, the actual baseline used for parallax measurements can be as large as 2 AU, by using observations six months apart at the appropriate times of year.
From Figure 2.23, we see that the distance ``d`` from the Sun to another star is simply related to the star's parallax:

$d = \frac{a}{\tan{π''}}. \tag{2.32}$
"""

# ╔═╡ 6e8dd305-2e16-4c1f-97cc-52d14c443352
md"""
**Remark.**
Using the small-angle approximation, and converting the parallax from radians to arcseconds, we find that

$d = \frac{a}{π''[\text{arcsec}]} \left(\frac{180^∘}{π \text{ rad}}\right) \left(\frac{3600''}{1^∘}\right) = \frac{206,265 \text{ AU}}{π''}. \tag{2.33}$

The distance at which a star has a parallax of exactly ``1''`` is known as the **parsec**, short for "**par**allax of one arc**sec**."
The number of AU in one parsec is equal to the number of arcseconds in a radian: 206,265.
The nearest star to the Sun, Proxima Centauri, has a parallax ``π'' = 0.76''``, and hence is at a distance ``d = 270,000 \text{ AU} = 1.3 \text{ parsecs}``.
Stellar parallax causes the positions of stars on the celestial sphere to follow a path that is the projection of the Earth's orbit onto the sky: an ellipse with semimajor axis ``π''`` and semiminor axis ``π'' β``, where ``β`` is the angular distance of the star from the ecliptic.
It took a while for stellar parallax to be measured, but when it was, it confirmed two initially controversial assertions made by Copernicus.
First, the Earth goes around the Sun, rather than vice versa.
Second, space is big (really big).
"""

# ╔═╡ 3761d7e0-1072-4b09-bcc1-2ef7e3c801f3
md"# 3 Orbital Mechanics"

# ╔═╡ 249db0be-0d37-4293-a0e6-27e0b4732727
md"""
**Remark.**
Isaac Newton (1642/3--1727) was born in rural England; his birth date was 1642 December 25 according to the Julian calendar (still in use in England at the time), but 1643 January 4 according to the Gregorian calendar.
When young Newton proved to be incompetent at managing his family's farm, he was sent to Cambridge University and started to thrive as a scholar.
In 1665, the year in which Newton earned his bachelor's degree, an outbreak of the plague closed down the university, and Newton retreated to his family's farm and began to think---very hard.
The period when the university was closed Newton's *annus mirabilis*, during which he discovered calculus, formulated his three **laws of motion** and his **law of universal gravitation**, and performed ground-breaking experiments in optics.
"""

# ╔═╡ e0312c7d-79c2-451f-ac43-11fcd9605049
md"""
**Remark.**
Newton didn't publish his laws of motion and law of universal gravitation until 1687, when his book *Philosophiae Naturalis Principia Mathematica* ("Mathematical Principles of Natural Philosophy") was published.
The laws of motion can be summarized as follows:

1. An object's velocity remains constant unless a net outside force acts upon it.

2. If a net outside force acts on an object, it's acceleration is directly proportional to the force and inversely proportional to the mass of the object.
   In short ``\vec{𝐅} = m\vec{𝐚}``, where ``\vec{𝐅}`` is the outside force, ``m`` is the mass, and ``\vec{𝐚}`` is the acceleration.

3. Forces come in pairs, equal in magnitude and opposite in direction.
   (As Newton put it: *Actioni contrariam et aequalem esse reactionem*, or "Every action has an equal and opposite reaction.")

Newton's law of universal gravitation can be concisely expressed in mathematical form.
Suppose that two spherical objects, of mass ``M`` and ``m``, are separated by a distance ``r``.
(The distance ``r`` is measured between the centers of the two objects.)
Newton's law tells us that the gravitational attraction between the two objects is

$F = -\frac{GMm}{r^2}, \tag{3.1}$

where ``G``, called the **gravitational constant**, is a universal constant whose value is ``G = 6.67 × 10^{-11} \text{ Nm}^2 \text{kg}^{-2}`` (where ``N`` stands for newton).
The negative sign in equation (3.1) tells us that gravity is always an attractive force.
"""

# ╔═╡ 75998b1d-e9ab-4c7b-b7c6-ca0b2040a42c
md"## 3.1 Deriving Kepler's Laws"

# ╔═╡ d7625185-3e3f-4595-bf6b-990dc12a3af7
md"""
**Remark.**
Newton derived the form of equation (3.1) by requiring that the force of gravity result in planetary orbits that obey Kepler's laws of planetary motion.
Newton was solving the problem in the difficult direction: he deduced the form of the law of gravitation starting from the observations.
Since we aren't as smart as Newton, we will take the easier direction in the following section; starting with Newton's law of universal gravitation, we'll shot that Kepler's laws follow as a consequence.
Although it may seem numerically incongruous, the derivations will flow more smoothly if we begin by deriving Kepler's second law, then go on to the first and third laws.
"""

# ╔═╡ c82cea1d-456e-4c4c-9f7a-5207f9f01e68
md"### 3.1.1 Kepler's Second Law"

# ╔═╡ 6a505fb9-9649-4080-bce1-2fa098155f7b
md"""
**Remark.**
Gravity is an example of a **central force**, defined as a force directed straight toward or away from some central point, with a magnitude that depends only on the distance ``r`` from that point.
The gravitational force qualifies as a central force because the force ``\vec{𝐅}`` acting on the mass ``m`` always points toward the mass ``M`` (the central point of the force), and the magnitude of the gravitational force is ``∝ 1/r^2``, where ``r`` is the separation of the two masses.
While analyzing the motion of a particle responding to a central force, it is convenient to be able to switch from Cartesian coordinates to polar coordinates.
"""

# ╔═╡ 8347bcb0-7897-49da-9038-7f91dfacb108
md"""
**Remark.**
In a Cartesian coordinate system (Figure 3.1), the unit vectors along the ``x``, ``y`` and ``z`` axes are ``\hat{𝐢}``, ``\hat{𝐣}``, and ``\hat{𝐤}``, respectively.
Suppose we choose our Cartesian coordinate axes such that the larger mass ``M`` lies at the origin, and the position ``\vec{𝐫}`` and velocity ``\vec{𝐯}`` of the smaller mass ``m`` lie in the ``xy`` plane.
(For the sake of concreteness, let's call mass ``M`` the Sun, and mass ``m`` a planet, although the situation applies in general to any system of two spherical masses: a planet and a moon, a planet and an artificial satellite, a supermassive black hole and a star--you name it.)
The planet's position ``(x,y)`` can now be expressed in polar coordinates, where the polar coordinates ``(r,θ)`` are related to the Cartesian coordinates ``(x,y)`` by the relations ``x = r\cos{θ}`` and ``y = r\sin{θ}``.
In polar coordinates, as illustrated in Figure 3.2, the unit vectors ``\hat{𝐫}`` and ``\hat{θ}`` are

$\hat{𝐫} = \hat{𝐢} \cos{θ} + \hat{𝐣} \sin{θ} \tag{3.2}$

and

$\hat{θ} = -\hat{𝐢} \sin{θ} + \hat{𝐣} \cos{θ}. \tag{3.3}$

The dot product (or scalar product) of these unit vectors is

$\hat{𝐫} ⋅ \hat{θ} = -\cos{θ} \sin{θ} + \sin{θ} \cos{θ} = 0, \tag{3.4}$

and their cross product (or vector product) is

$\hat{𝐫} × \hat{θ} = \begin{vmatrix} \hat{𝐢} & \hat{𝐣} & \hat{𝐤} \\ \cos{θ} & \sin{θ} & 0 \\ -\sin{θ} & \cos{θ} & 0 \end{vmatrix} = \hat{𝐤} (\cos^2{θ} + \sin^2{θ}) = \hat{𝐤}, \tag{3.5}$

thus demonstrating that ``\hat{𝐫}`` and ``\hat{θ}`` are mutually orthogonal as well as being orthogonal to ``\vec{𝐤}``, the unit vector in the ``z`` direction.
"""

# ╔═╡ 76c0497c-c100-47fb-9aa7-840b5d164d46
md"""
**Remark.**
From equations (3.2) and (3.3), we see that

$\frac{d\hat{𝐫}}{dθ} = \frac{d}{dθ} (\hat{𝐢}\cos{θ} + \hat{𝐣}\sin{θ}) = -\hat{𝐢} \sin{θ} + \hat{𝐣} \cos{θ} = \hat{θ} \tag{3.6}$

and

$\frac{d\hat{θ}}{dθ} = \frac{d}{dθ} (-\hat{𝐢} \sin{θ} + \hat{𝐣} \cos{θ}) = -\hat{𝐢} \cos{θ} - \hat{𝐣} \sin{θ} = -\hat{𝐫}. \tag{3.7}$

We can then apply the chain rule to find the rate of change of the unit vectors ``\vec{𝐫}`` and ``\vec{θ}``:

$\frac{d\hat{𝐫}}{dt} = \frac{d\hat{𝐫}}{dθ} \frac{dθ}{dt} = \hat{θ} \frac{dθ}{dt} \tag{3.8}$

and

$\frac{d\hat{θ}}{dt} = \frac{d\hat{θ}}{dθ} \frac{dθ}{dt} = -\hat{𝐫} \frac{dθ}{dt}. \tag{3.9}$

Note that since ``\hat{𝐫}`` and ``\hat{θ}`` are unit vectors, they change only in direction, not in magnitude.
"""

# ╔═╡ 85bfbc28-dcbb-422c-bf0a-741f1f0b89bc
md"### 3.1.2 Kepler's First Law"

# ╔═╡ 16e38309-52cf-4c44-9e6c-56f0a1fcc6df
md"""
**Remark.**
To demonstrate that Kepler's first law follows from Newton's law of universal gravitation, we will have to demonstrate that the trajectory ``r(θ)`` of the mass ``m`` (the planet) constitutes an ellipse with the larger mass ``M`` (the Sun) at one focus.
"""

# ╔═╡ afbae2fc-8a96-4f16-ab81-1a0525a5a183
md"""
**Remark.**
Conic sections can be obtained by slicing a cone with a plane, as illustrated in Figure 3.5.
"""

# ╔═╡ e8029205-c22c-482e-9b85-40a61ed39fd4
md"""
**Remark.**
We have blithely asserted that the parameter ``e`` in equation (3.34), when it lies in the range ``0 ≤ e < 1``, is precisely the same as the eccentricity of an ellipse, defined as the distance between the foci divided by the length of the major axis.
"""

# ╔═╡ 285476e8-e73c-4058-a128-e5713ced68f9
md"""
**Remark.**
Consider the point of the ellipse that lies on the positive ``y`` axis, where ``r = r' = a`` as shown in Figure 3.7.
"""

# ╔═╡ 879cb334-590a-4421-9b8a-01c7988d0e5e
md"""
**Remark.**
It can also be shown that the average distance of all points on the ellipse from either focus is equal to the semimajor axis length ``a``.
"""

# ╔═╡ d28b43b7-4d8a-4052-a8b8-ac87194a8b55
md"""
**Remark.**
Let us now describe the ellipse in terms of thte polar coordinates ``(r,θ)``, where ``r`` is the distance from the principal focus and ``θ`` is the polar angle measured counterclockwise from the positive ``x`` axis, as shown in Figure 3.9.
"""

# ╔═╡ eba3aa58-08af-485c-a9e6-e6af8be0266d
md"### 3.1.3 Kepler's Third Law"

# ╔═╡ 1e9be21b-67f8-46ae-9c73-e9dcee8b5315
md"""
**Remark.**
Kepler's second law (equation 3.21) tells us that the area swept out per unit time by the planet--Sun line is a constant, ``L/(2m)``.
"""

# ╔═╡ de326274-5613-478e-904a-4163ca563678
md"""
**Remark.**
The masses of celestial bodies are measured by how they accelerate nearby masses.
"""

# ╔═╡ c96715ce-81d6-40de-be58-9e9fbde6fcf3
md"## 3.2 Orbital Energetics"

# ╔═╡ eb260ee8-f62e-4080-b2f3-2ec622822ffe
md"""
**Remark.**
Suppose you place a particle of mass ``m`` at a location ``\vec{𝐫}`` relative to an object of mass ``M``; you give it a kick so that it is initially moving at a velocity ``\vec{𝐯}``.
"""

# ╔═╡ 56e5f927-7deb-4a7b-858d-6110d176ad9a
md"""
**Remark.**
We can readily identify three distince cases:

1. **Hyperbolic orbits:**

2. **Parabolic orbits:**

3. **Elliptical orbits:**
"""

# ╔═╡ 4fa54764-c4bc-4bf2-887f-c19081c4f10d
md"## 3.3 Orbital Speed"

# ╔═╡ 49c15c89-76ba-4b6c-bd45-69988ab74008
md"""
**Remark.**
It is not possible in general to obtain a simple equation that gives the time dependence of a planet's distance from the Sun, ``r(t)``, or orbital speed, ``v(t)``.
"""

# ╔═╡ 0fabea65-39f8-4e9b-ae73-5f397598be58
md"""
**Remark.**
An interesting application of the *vis viva* equation (eq. 3.68) addresses the problem of the **transfer orbit**.
"""

# ╔═╡ d62e1bda-8de5-4738-bfd9-b6ec444fa085
md"""
**Remark.**
As a concrete example, suppose you want to send a spacecraft to Mars.
"""

# ╔═╡ 40362fdc-0978-4cc8-b3dd-7f1eb1a2fb3f
md"""
**Remark.**
The average speed of the Earth on its orbit is

$v_⊕ = \frac{2π a_⊕}{P_⊕} = \frac{2π (1.50 × 10^8 \text{ km})}{3.16 × 10^7 \text{ s}} = 29.8 \text{ km s}^{-1}. \tag{3.74}$
"""

# ╔═╡ c24e586b-b6ec-41dd-b832-1dc07a73f5b0
md"""
**Remark.**
Use of a Hohmann transfer orbit requires careful timing.
"""

# ╔═╡ 81dda22a-d0a6-4df6-a65a-3e67587ea656
md"## 3.4 The Virial Theorem"

# ╔═╡ 10b2649a-4b3d-4fef-b468-f339bd6c5a24
md"""
**Remark.**
If a system only two spherical bodies, such as a star and planet, there is a simple analytic solution (first seen in Section 2.5) for the planet's trajectory, ``r(θ)``.
"""

# ╔═╡ b14e34d9-1c70-4c52-90b6-5d905cd7a148
md"""
**Remark.**
To derive the virial theorem, let's suppose we have a system containing ``N`` stars (or planets, or other compact massive bodies).
"""

# ╔═╡ c6bd48fc-0cb4-4f74-8bbd-6ca901d311fa
md"""
**Remark.**
Equation (3.81) is the most general form of the virial theorem.
"""

# ╔═╡ ceac35a5-5b17-4331-a5d9-c7d8ea3fc83f
md"# 4 The Earth-Moon System"

# ╔═╡ fd49d33c-85cd-4a0b-996c-44daeed2ffa8
md"""
**Remark.**
In the previous chapter, we treated all massive bodies as if they were point masses.
"""

# ╔═╡ f4073596-1f4c-424e-a6f5-191b70772185
md"## 4.1 Precession"

# ╔═╡ 6d507cc4-c345-4e3e-9385-8a69986cb62d
md"""
**Remark.**
A rapidly rotating plastic body will distory from a spherical shape.
"""

# ╔═╡ 8e35545d-563b-40bd-9f6b-cf98dac8e8d4
md"## 4.2 Tides"

# ╔═╡ cecbeffc-b715-4ba8-8496-173acb410ff0
md"""
**Remark.**
Around an isolated spherical body, the equipotential surfaces (contours of constant gravitational potential) will be perfect spheres.
However, if another massive object is brought close, the equipotential surfaces will become distorted.
To the extent that the initially spherical body is fluid, it will change its shape to fill a nonspherical equipotential surface.
"""

# ╔═╡ f506af67-684e-49f3-8273-c70e81432e4f
md"""
**Definition.**
The distortions of the equipotential surfaces, and of the body within them, are called **tides**.
"""

# ╔═╡ c3a098e6-063b-4797-8c83-983a65864fda
md"""
**Remark.**
Because the Earth has a large, nearby Moon, its shape is measurably distorted by the tidal effect of the Moon.
The most spectacular manifestation of tides for an inhabitant of the Earth is the rise and fall of the water level at the seashore; Figure 4.2 shows "high tide" and "low tide" in the Bay of Fundy.
The fluid water is more easily distorted by the differential tiday forces than is the rigid rock.
However, even the solid crust of the Earth is significantly distorted in shape by the tidal forces.
"""

# ╔═╡ 06422f7a-877b-4a58-8154-ade3744d035d
md"""
**Remark.**
To compute the differential tidal force, let's start by considering the gravitational force of the Moon acting on the matter of which the Earth is made.
A small bit of matter (perhaps a drop of ocean water, or perhaps a pebble has mass ``m``).
The gravitation force exerted on it by the Moon is

$F_\text{Moon}(r) = -\frac{GM_\text{Moon}m}{r^2}, \tag{4.3}$

where ``M_\text{Moon} = 7.4×10^{22} \text{ kg}`` is the Moon's mass, and ``r`` is the distance of the bit of matter from the Moon's center.
The average distance ``r_0`` between the center of the Earth and the center of the Moon is 384,000 km, about 60 times the Earth's mean radius of ``R_⊕ = 6370 \text{ km}``.
Thus, the force of gravity at a distance ``r`` from the Moon's center can be profitably expanded as a Taylor series for locations within the Earth or on the Earth's surface:

$F_\text{Moon}(r) ≈ F_\text{Moon}(r_0) + (r - r_0) \left.\frac{dF_\text{Moon}}{dr}\right|_{r=r_0}. \tag{4.4}$

Since, from equation (4.3), we know that

$\frac{dF_\text{Moon}}{dr} = \frac{2GM_\text{Moon}m}{r^3}, \tag{4.5}$

we can write the *differential* gravitational force near the Earth's center as

$\Delta F_\text{Moon} ≡ F_\text{Moon}(r) - F_\text{Moon}(r_0) = (r - r_0) \frac{2GM_\text{Moon}m}{{r_0}^3}. \tag{4.6}$

The point on the Eatrh's surface nearest Moon has ``r = r_1 = r_0 - R_⊕``, as shown in Figure 4.3.
This means that the differential force at this near point is

$\Delta F_\text{Moon}(r_1) = -\frac{2GM_\text{Moon}mR_⊕}{{r_0}^3}. \tag{4.7}$

Similarly, we can compute the differential force at the point on the Earth's surface *farthest* from hte Moon, ``r = r_2 = r_0 + R_⊕``; it is

$\Delta F_\text{Moon}(r_2) = \frac{2GM_\text{Moon}mR_⊕}{{r_0}^3}, \tag{4.8}$

equal in magnitude but opposite in sign to the differential force at the near point.
"""

# ╔═╡ 115059f4-d543-4d86-ae5c-72e8a4a5da11
md"## 4.3 Limits on the Size of Orbits"

# ╔═╡ afe47a91-14ae-452d-a96e-e6baa69b20d0
md"""
**Remark.**
Just as the Moon produces tidal bulges on the Earth, the Earth produces tidal bulges on the Moon.
Since the differential gravitational force acting on the Moon is inversely proportional to the cube of the Earth--Moon distance, if we could bring the Moon closer to the Earth, the tidal distortions of the Moon would increase dramatically.
At some critical distance, the differential gravitational forces would tear the Moon apart.
Thus, tidal effects impose a minimum permissible orbit size.
Conversely, there is a maximum possible size for the orbit of the Moon, beyond which the differential gravitational acceleration caused by the Sun would exceed the acceleration of the Moon by the Earth.
The Moon would then escape into a solar orbit.
This section will discuss first the minimum orbit size (the Roche limit), then the maximum orbit size (the Hill radius).
"""

# ╔═╡ cf73af15-c87f-45dd-823b-335b3abd02ef
md"### 4.3.1 Minimum Orbit Size: Roche Limit"

# ╔═╡ 9f9a6a18-49b6-49ae-98ce-ebe90a3b898d
md"""
**Remark.**
Every object has a self-gravity that tends to hold it together and mold it into a spherical body.
However, if a small mass is sufficiently close to a larger mass, the differential gravitational force on the smaller mass can exceed it's self gravity, causing the small mass to be ripped apart.
How close does the smaller mass have to come to the larger one for this tidal disruption to occur?
To answer this question, let's first consider the artificial yet illustrative case of two spherical masses, each of mass ``m`` and diameter ``\Delta r``, that are just touching each other, as shown in Figure 4.8.
The centers of the two masses are thus separated by a distance ``\Delta r``.
This two-body system is separated from a larger mass ``M`` by a distance ``r > \Delta r``.
The differential force on the two masses is

$\Delta F = \frac{dF}{dr} \Delta r = \frac{2GMm}{r^3} \Delta r. \tag{4.29}$

The self-gravity holding the two masses together is

$F = -\frac{Gmm}{(\Delta r)^2}. \tag{4.30}$

As we make ``r`` smaller, there is a critical distance known as the **Roche limit**, ``r_\text{R}``, at which the differential tidal force, which tends to pull the masses apart, is larger in magnitude than the self-gravity force, which tends to bring the masses together.
By comparing equations (4.29) and (4.30), we find that the Roche limit ``r_\text{R}`` is given by the relation

$\frac{2GMm}{{r_\text{R}}^3} Δr = \frac{Gmm}{(\Delta r)^2}. \tag{4.31}$

Solving for ``r_\text{R}``, we find

$r_\text{R} = \left(\frac{2M}{m}\right)^{1/3} \Delta r. \tag{4.32}$
"""

# ╔═╡ 56967c26-2347-477c-9872-43a043625638
md"### 4.3.2 Maximum Orbit Size: Hill Radius"

# ╔═╡ 76bfeba7-774c-425c-a90e-3b51b04a3d38
md"""
**Remark.**
The maximum distance at which the Moon could orbit the Earth is the distance at which the differential acceleration of the Moon away from the Earth, due to the Sun's gravity, is equal to the acceleration of the Moon toward the Earth, due to the Earth's gravity.
"""

# ╔═╡ cc45ec0c-dfb5-4c24-8ced-7ef753f97d1a
md"""
**Remark.**
Consider the three masses illustrated in Figure 4.9, which may be thought of as the Earth, the Moon, and the Sun.
The Earth, of mass ``M_⊕``, and the Moon, of mass ``M_{\text{Moon}}``, are separated by a distance ``a_⊕ ≫ r``.
The difference between the Earth's acceleration due to the Sun, ``g_⊕``, and the Moon's acceleration due to the Sun, ``g_{\text{Moon}}``, is

$\Delta g = g_{\text{Moon}} - g_⊕ = \frac{GM_⊙}{(a_⊕ - r)^2} - \frac{GM_⊙}{a^2}. \tag{4.41}$

In the case of the Earth--Moon system, ``r ≪ a_⊕``, so we may make the approximation.

$(a_⊕ - r)^{-2} = {a_⊕}^{-2} (1 - r/a_⊕)^{-2} ≈ {a_⊕}^{-2} \left(1 + \frac{2r}{a_⊕}\right). \tag{4.42}$

(Note the now-familiar inverse cube law for a differential gravitational effect.
Now, however, instead of a differential force stretching out the Earth, we have a differential force stretching out the Earth--Moon system.)
"""

# ╔═╡ d51a586f-ba72-43e0-8371-ce6793cce732
md"""
**Remark.**
As we make the Earth--Moon separation ``r`` larger, the differential acceleration ``\Delta g`` increases.
At a critical distance known as the **Hill radius**, ``r_\text{H}``, the differential acceleration ``\Delta g`` is equal in magnitude to the Moon's acceleration due to the Earth.
Using equation (4.43), we find

$\frac{2GM_⊙ r_\text{H}}{{a_⊕}^3} = \frac{GM_⊕}{{r_\text{H}}^2}. \tag{4.44}$

Solving for the Hill radius ``r_{\text{H}}``, we find

$r_{\text{H}} = \left(\frac{M_⊕}{2M_⊙}\right)^{1/3} a_⊕. \tag{4.45}$

The similarity in appearance between the equation for the Roche limit (eq. 4.32) and the equation for the Hill radius (eq. 4.45) is not coincidental.
In each case, we were computing the radius at which a differential gravitational force was sufficient to pull apart something bound by gravity.
When computing the Roche limit, the "something" was a single extended object, such as a satellite; when computing the Hill radius, the "something" was a two-body system, such as a planet and its satellite.
"""

# ╔═╡ d2e89c13-ae15-4802-9145-21641f07082a
md"## 4.4 Phases of the Moon"

# ╔═╡ 88a823ed-07a9-4821-b3b6-fd8673f80c40
md"""
**Remark.**
As the Moon orbits the Earth, an Earthly observer sees the Moon go through its complete set of **phases**, as different fractions of the sunlit hemisphere of the Moon are visible from the Earth.
"""

# ╔═╡ 128b6be0-92ad-4779-a5d6-1847c928e1bc
md"## 4.5 Rotation of the Moon"

# ╔═╡ 908cca02-2887-431e-833e-70b03cd4c64e
md"""
**Remark.**
The Moon raises tidal bulges on the Earth; similarly, the Earth raises tidal bulges on the Moon.
"""

# ╔═╡ 7b9f789d-baf5-4341-ad61-0a7235c9358c
md"## 4.6 Eclipses"

# ╔═╡ 5e29bc9b-89aa-46d4-a908-737a6992a243
md"""
**Remark.**
In general, an **eclipse** can be defined as the passage of one body through the shadow of another.
"""

# ╔═╡ 77ce8ffc-99ca-425b-9f11-b544ffcb1b51
md"# 5 Interaction of Radiation and Matter"

# ╔═╡ 92047926-8209-41ed-9e2a-439fa0045b2a
md"""
**Remark.**
Much of what we know about the universe comes from collecting and analyzing electromagnetic radiation, otherwise known as "light."
Thanks to wave-particle duality, light can be thought of either as electromagnetic waves or as a stream of massless particles, called **photons**.
Electromagnetic waves are characterized by their wavelength ``λ``, or frequency ``ν = c / λ``, where ``c`` is the speed of light.
Photons are characterized by their energy ``E = hν``, where ``h`` is the Planck constant, ``h = 6.626 × 10^{-34} \text{ J s}``.
In studying atomic structure, a handy unit of energy is the electron volt (eV), defined as the change in energy of an electron when the electrical potential drops by one volt.
When expressed in terms of joules, the electron volt is seen to be a small amount of energy: ``1 \text{ eV} = 1.602 × 10^{-19} \text{ J}``.
Using electron volts as our unit of energy, the Planck constant is ``h = 4.135 × 10^{-15} \text{ eV s}``.
"""

# ╔═╡ 950806ac-d6de-4139-b4a1-a6b8ba474191
md"""
**Remark.**
Early astronomers could detect only visible light, that is, light that stimulates a response in the retina of the human eye.
Visible light lies in the wavelength range ``4 × 10^{-7} \text{ m} < λ < 7 × 10^{-7} \text{ m}``, corresponding to photons in the energy range ``1.8 \text{ eV} < E < 3.1 \text{ eV}``.
Modern astronomers, as we see in Chapter 6, have instruments that enable them to detect photons over a much broader range of energies.
It has proved convenient for scientists to subdivide the continuous electromagnetic spectrum into different wavelength ranges, from radio waves, which have the longest wavelength and smallest photon energy, to gamma rays, which have the shortest wavelegnth and highest photon energy.
A summary of the main subdivisions of the full spectrum, with approximate ranges in wavelength and photon energy, is given in Table 5.1.
"""

# ╔═╡ 89a57170-0d8e-4571-bf89-95ac4032c4b1
md"""
**Remark.**
In this chapter, we will study how light and matter interact at the level of individual particles.
To begin, we'll explore the nature of atomic structure by examining Niels Bohr's model of the hydrogen atom.
Although this derivation is semiclassical rather than fully quantum mechanical, it will give us the insight we need to understand basic atomic structure and its relation to the emission and absorption of light.
"""

# ╔═╡ 2aace7b2-d3ec-4ad1-9e4d-00be9e2c6d41
md"## 5.1 Atomic Structure"

# ╔═╡ 31550d4c-c153-41ac-995b-cd2fafafcc8f
md"""
**Remark.**
The Bohr model for a hydrogen-like atom begins with a nucleus consisting of ``Z`` protons, each with positive electric charge ``+e`` and mass ``m_p``, and ``A - Z`` neutrons, each with zero electric charge and mass ``m_n ∼ m_p``.
The number ``A``, called the mass number, is the total number of nucleons (protons and neutrons) in the atomic nucleus.
The mass of the nucleus is ``∼ Am_p``, and its charge is ``Ze``.
Orbiting the nucleus of the Bohr atom is a single electron with negative charge ``-e`` and mass ``m_e ≈ m_p / 1836``.
If we treat the electron as a classical particle traveling on a circular orbit of radius ``r`` about the atomic nucleus, its acceleration must be ``-v^2 / r``, where ``v`` is the electron's orbital speed.
Equating the electromagnetic attraction between the nucleus and electron with the force necessary to keep it on its circular orbit, we have

$-\frac{(Ze)e}{4πϵ_0 r^2} = -\frac{m_e v^2}{r}, \tag{5.1}$

where ``ϵ_0`` is the vacuum permittivity (sometimes called the permittivity of free space); in the SI system, ``ϵ_0 = 8.854 × 10^{-12} \text{ C}^2 \text{J}^{-1} \text{m}^{-1}``.
The kinetic energy of the orbiting electron is

$K = \frac{1}{2} m_e v^2 = \frac{Ze^2}{8π ϵ_0 r}, \tag{5.2}$

and its potential energy is

$U = -\frac{Ze^2}{4πϵ_0 r}. \tag{5.3}$

Thus, the total energy of the electron is

$E = K + U = \frac{Ze^2}{8πϵ_0 r} - \frac{Ze^2}{4πϵ_0 r} = -\frac{Ze^2}{8πϵ_0 r}. \tag{5.4}$
"""

# ╔═╡ 1a0725fd-8e56-42f2-a5da-05f169e682ee
md"""
**Remark.**
So far, the electron, moving on a circular orbit under the influence of an attractive force that follows an inverse square law, is strongly analogous to a planet moving around a star.
Bohr's key insight, though, was that unlike gravitational orbits, the orbital angular momentum of an electron is *quantized*.
That is, it can't have an arbitrary value.
Only angular momenta that are integer multiples of some constant value are allowed; more specifically, the orbital angular momentum of an electron must be

$L = m_e vr = \frac{nh}{2π} = nħ, \tag{5.5}$

where the **quantum number** ``n`` must be an integer.
In equation (5.5), ``h`` is the Planck constant and ``ħ`` is the reduced Planck constant, ``ħ ≡ h/(2π) = 1.052 × 10^{-34} \text{ J s}``.
"""

# ╔═╡ ace32ab2-d056-47aa-9562-7f7fb8f9467e
md"""
**Remark.**
By squaring the angular momentum (given by equation 5.5), we find that

${m_e}^2 v^2 r^2 = n^2 ħ^2. \tag{5.6}$

However, the kinetic energy relation (equation 5.2) tells us that

$m_e v^2 = \frac{Ze^2}{4πϵ_0 r}. \tag{5.7}$

By substituting equation (5.7) into equation (5.6), and solving for ``r``, we find that the orbital radius for an electron with quantum number ``n`` is

$r_n = \frac{4πϵ_0ħ^2}{Ze^2m_e} n^2 = \frac{5.29 × 10^{-11} \text{ m}}{Z} n^2. \tag{5.8}$

We are now, obviously, entering the realm of the small.
When discussing  atomic structure, a common unit of length is the **angstrom** (Å), defined as ``1 Å ≡ 10^{-10} \text{ m}``.
In these units, the orbital radius of the Bohr atom is

$r_n = \frac{0.529 \text{ Å}}{Z} n^2. \tag{5.9}$

A schematic drawing of the first three orbits of a Bohr atom is shown in Figure 5.1.
Using the relation for the orbital radius (equation 5.8) in the equation for the total electron energy (equation 5.4), we find the energy as a function of the quantum number ``n``:

$E_n = -\frac{Ze^2}{8πϵ_0} \left(\frac{Ze^2 m_e}{4πϵ_0 ħ^2}\right) \frac{1}{n^2} = -\left(\frac{e^2}{4πϵ_0}\right)^2 \frac{m_e}{2ħ^2} \frac{Z^2}{n^2}. \tag{5.10}$

A useful dimensionless number, in this context, is the **fine-structure constant** defined as

$α ≡ \frac{1}{4πϵ_0} \frac{e^2}{ħc} ≈ 7.30 × 10^{-3} ≈ \frac{1}{137}. \tag{5.11}$

Using the fine-structure constant ``α``, the electron orbital energy can be written in the more convenient form

$E_n = -\frac{m_e c^2}{2} α^2 \frac{Z^2}{n^2}, \tag{5.12}$

which expresses the orbital energy in terms of the rest energy of the electron, ``m_e c^2 = 8.19 × 10^{-14} \text{ J} = 0.511 \text{ MeV}``.
Since ``α^2 / 2 ≈ 3 × 10^{-5}``, the orbital energy is small compared to the rest energy.
Expressed in units of electron volts, the orbital energy is

$E_n ≈ -\frac{0.511 \text{ MeV}}{2} \left(\frac{1}{137}\right)^2 \frac{Z^2}{n^2} ≈ -13.6 \text{ eV} \frac{Z^2}{n^2}. \tag{5.13}$

The orbital radius can also be written conveniently using ``α``:

$r_n = \frac{ħ}{m_e c} \frac{1}{α} \frac{n^2}{Z} = \frac{λ_c}{2π} \frac{1}{α} \frac{n^2}{Z}, \tag{5.14}$

where ``λ_c ≡ h / (m_e c) = 0.0243 \text{ Å}`` is the Compton wavelength of the electron.
"""

# ╔═╡ da872c9e-ffaf-4b77-b18f-ef05dac7733d
md"""
**Remark.**
Acccording to classical physics, since the electron is accelerated, it should be radiating at the rate

$P = \frac{2}{3} \frac{e^2}{4πϵ_0}\frac{a^2}{c^3} = \frac{2}{3} ħα \frac{a^2}{c^3}, \tag{5.15}$

where ``a`` is the acceleration of the electron.
For the electron moving on its circular orbit,

$a = \frac{v^2}{r} = \frac{Ze^2}{4πϵ_0} \frac{1}{m_e r^2} = \frac{Zαħc}{m_e} \frac{1}{r^2}, \tag{5.16}$

and using equation (5.14) to give us the appropriate radius ``r_n`` for each orbit,

$a = \frac{Zαħc}{m_e} \frac{m_e^2 c^2 α^2 Z^2}{ħ^2 n^4} = \frac{Z^3 α^3 m_e c^3}{ħ n^4}. \tag{5.17}$

Substituting the acceleration back into the formula for power radiated, we find

$P = \frac{2}{3} α^7 \frac{(m_e c^2)^2}{ħ} \frac{Z^6}{n^8}. \tag{5.18}$

If the orbiting electron actually radiated at this classical rate, the lifetime of the orbit would be

$\begin{align*}
τ &= \frac{E}{dE/dt} = \frac{E_n}{P} \\
&= \frac{3}{4} \frac{1}{α^5} \frac{ħ}{m_e c^2} \frac{n^6}{Z^4} \\
&≈ 4.7 × 10^{-11} \text{ s} \left(\frac{n^6}{Z^4}\right). \tag{5.19}
\end{align*}$

The time for an electron in the ``n = 2`` orbit of hydrogen ``(Z = 1)`` to decay to the ``n = 1`` orbit is then

$τ ≈ (4.7 × 10^{-11} \text{ s})(2^6) ≈ 3 × 10^{-9} \text{ s}. \tag{5.20}$

The actual lifetime of the ``n = 2`` state in hydrogen is ``τ = 1.6 × 10^{-9} \text{ s}``, so the semiclassical Bohr analysis gives a result correct to within a factor of 2.
"""

# ╔═╡ 343b1bae-3024-4aca-b55b-7ae9447796ff
md"""
**Remark.**
The only truly stable state of a Bohr atom is the **ground state**, with ``n = 1``.
Electrons in **excited states**, those with ``n ≥ 2``, will decay to states with lower ``n``, losing energy by emitting photons whose energy is equal to the energy difference ``\Delta E`` between the two states.
If an electron transfers from level ``n`` to level ``n'``, where ``n > n'``, the emitted photon will have energy

$\begin{align*}
\Delta E = E_n - E_{n'} &= \frac{m_e c^2}{2} α^2 Z^2 \left[\frac{1}{(n')^2} - \frac{1}{n^2}\right] \\
&= 13.6 \text{ eV} \;Z^2 \left[\frac{1}{(n')^2} - \frac{1}{n^2}\right]. \tag{5.21}
\end{align*}$

The photon energy can be translated into a frequency ``ν`` or wavelength ``λ`` for the emitted light:

$\Delta E = hν = \frac{hc}{λ}. \tag{5.22}$

In terms of wavelength,

$\begin{align*}
λ = \frac{hc}{\Delta E} &= \left(\frac{2h}{m_e cα^2 Z^2}\right) \left[\frac{1}{(n')^2} - \frac{1}{n^2}\right]^{-1} \\
&= \frac{911.6 \text{ Å}}{Z^2} \left[\frac{1}{(n')^2} - \frac{1}{n^2}\right]^{-1}. \tag{5.23}
\end{align*}$

Equations (5.21) and (5.23) enable us to compute the photon energies or wavelengths that are emitted or absorbed by hydrogen gas as the electrons undergo **atomic transitions** between one permitted orbit and another.
Transitions from higher-energy states to lower-energy states result in emission of photons; transitions from lower to higher energy result from absorption of photons.
"""

# ╔═╡ 3daf7792-845a-416a-ac31-e76c8536a664
md"""
**Remark.**
The energy level differences in hydrogen follow distinct and recognizable patterns.
For example, all the downward transitions that end in the ``n = 1`` ground state correspond to wavelengths in the ultraviolet range of the spectrum.
This group of transitions is known as the **Lyman series**, named after the physicist Theodore Lyman.
In Figure 5.2, we show an energy level diagram for hydrogen based on equation (5.21) and specifying the transitions of the Lyman series.
The first line in the Lyman series is the one with the lowest energy (that is, ``n = 2 → n' = 1``) and is called Lyman ``α``, or ``\text{Ly}α \; λ1216``.
The number 1216 is the wavelength, in angstroms, of the light emitted by the transition, as computed in equation (5.23).
The next highest energy transition is ``\text{Ly}β \;λ1026 (n = 3 → n' = 1)``, the next is ``\text{Ly}γ \;λ972 (n = 4 → n' = 1)``, and so forth.
The **series limit** for the Lyman series corresponds to ``n = ∞``, with a wavelength ``λ = 912 \text{ Å}``.
When an electron in the ground state ``(n = 1)`` absorbs a  photon with wavelength ``λ < 912 \text{ Å}``, the electron becomes unbound and has an energy ``E > 0`` that is unquantized.
"""

# ╔═╡ fd39301d-ce10-4094-a8f9-bca9418bf2cf
md"""
**Remark.**
A second series of transitions in the hydrogen atom is called the **Balmer series**, named after the mathematician Johann Balmer.
The Balmer series consists of transitions in which the lower-energy level is the ``n = 2`` state, not the ``n = 1`` ground state.
The first line in the Balmer series corresponds to the ``n = 3 → n' = 2`` transitions; this is the ``\text{H}α \;λ6563`` line.
A wavelength of ``6563 \text{ Å}`` lies in the red range of the visible spectrum.
The Balmer ``β`` line is ``\text{H}β \;λ4861``, corresponding to a blue-green color.
The Balmer series limit is at ``3650 \text{ Å}``, in the near ultraviolet.
"""

# ╔═╡ bfd7e829-d316-4724-b51c-78c103306d7e
md"""
**Remark.**
The **Paschen series**, named after the physicist Friedrich Paschen, consists of the transitions for which the lower-energy level is the ``n = 3`` state.
In the Paschen series, the lowest energy transition is ``\text{Pa}α \; λ1.87 \;μ\text{ m}`` and the series limit is at ``8220 \text{ Å}``, in the near infrared.
There are also the Brackett series (to and from the ``n = 4`` level), the Pfund series (to and from ``n = 5``), and the Humphreys series (to and from ``n = 6``).
Those series for which the lower energy level is at ``n > 6`` don't have special names.
"""

# ╔═╡ 834555f2-5aa6-4751-957e-4c16de860d28
md"""
**Remark.**
The Bohr model of the atom is a useful starting point for studying atomic structure; it helps us to understand some basic principles involving energy and angular momentum, and it accurately predicts the energy levels for a hydrogen-like atom with a single electron.
However, for multielectron atoms, the semiclassical approach of the Bohr model fails miserably, and we must compute the energy levels using the full power of quantum mechanics.
Although a complete review is beyond the scope of this book, a few key results from quantum mechanics should be remembered.

- Electrons are **fermions**, particles with half-integer spin.
  As such, they obey the **Pauli exclusion principle**, which states that any given atomic state can be occupied by no more than one electron.

- Atomic systems spontaneously tend toward their lowest permissible energy state.
  That is, electrons in high-energy states will emit photons as they cascade down to the lowest unoccupied electron energy state.

- The quantum number ``n`` in the Bohr model is called the **principal quantum number**.
  In actuality, there are several quantum numbers that specify the orbital angular momentum and spin angular momentum of the bound electrons, as well as their distribution about the nucleus.
  Electron orbits, in the quantum mechanical picture, are best described in terms of probability distributions that indicate where the electron might be found.

- For excited states, there are a number of paths that might be taken to the lowest unoccupied state.
  The relative probability of an electron making the transition for any particular lower state can be predicted quantum mechanically; it depends on the quantum numbers associated with the upper state and the lower state.
  The lower probabilities can be described in terms of **selection rules**.
  Transitions that do not violate selection rules are called **permitted transitions**.
  Those that do violate selection rules are called **forbidden transitions**; this is something of a misnomer, since these transitions are not absolutely forbidden, but merely of much lower probability than the permitted transitions.
"""

# ╔═╡ 13b41367-1ff5-41bf-a30d-342a1941436e
md"## 5.2 Atomic Processes"

# ╔═╡ 018269c7-a477-4e97-b7f6-afabd92e0484
md"""
**Remark.**
Now let us consider, at a schematic level, how a single photon interacts with a single atom.
In Figure 5.3a, we show the energy level diagram for a simple (and imaginary) two-level atom.
The energy difference between the upper level, or excited state (energy ``E_2``), and the lower level, or ground state (energy ``E_1``), is ``\Delta E = E_2 - E_1``.
If the electron is in the ground state, then the atom can absorb a photon if the photon energy ``hν`` matches the energy difference ``\Delta E``.
Absorption of a photon with ``hν = \Delta E`` leaves the electron in the excited state.
From the atom's point of view, we call this process **photoexcitation**; from the photon's point of view, we call it **absorption**.
In any case, the energy formerly carried by the photon has been transferred to the atom as internal energy.
We can describe the process of photoexcitation symbolically as

$X + hν → X^*, \tag{5.24}$

where ``X`` represents thte atom in its ground state, and ``X^*`` represents the atom in its excited state.
"""

# ╔═╡ b3041819-f5bf-4026-a4bc-8757e4eb2f05
md"""
**Remark.**
Excitation can also be brought about by a collision with a particle, usually a free electron, as shown in Figure 5.3b.
In this case, some of the free electrons's kinetic energy is transferred to the internal energy of the atom through **collisional excitation**.
We can describe the process of collisional excitation symbolically as

$X + \frac{1}{2} m_e v^2 → X^* + \frac{1}{2} m_e (v')^2, \tag{5.25}$

where ``v`` and ``v'`` are the speed of the electron before and after the collision; since the electron loses kinetic energy in the process of collisional excitation, ``v > v' ≥ 0``.
Since the electron must initially have at least enough kinetic energy to raise the electron to the excited state, the threshold criterion for the collisional excitation is

$\frac{1}{2} m_e v^2 ≥ \Delta E, \tag{5.26}$

leaving the outgoing electron with a kinetic energy ``m_e (v')^2 / 2 = m_e v^2 / 2 - \Delta E``.
"""

# ╔═╡ ee686ec7-d392-4b98-879c-6f546d7c4245
md"""
**Remark.**
As illustrated in Figure 5.4, the reciprocal processes to photoexcitation and collisional excitation can also occur.
If an atom starts in an excited state, photodeexcitation yields a photon that carries away some of the internal energy of the atom; this can happen by either spontaneous or stimulated emission.
**Spontaneous emission**, illustrated in Figure 5.4a, is a result of the inherent instability of excited states; eventually Humpty Dumpty will fall to the ground, even if he isn't pushed.
If vacant lower levels exist, eventually an electron in an excited state will spontaneously decay to a lower energy state, producing a photon of energy ``hν = \Delta E``.
Symbolically, the process of spontaneous emission can be written as

$X^* → X + hν, \tag{5.27}$

In the case of **stimulated emission**, the downward transition of the electron in the excited state is triggered, or stimulated, by interaction with a photon of energy ``hν = \Delta E``.
An interesting feature of stimulated emission is that the new photon has the same direction and phase as the photon that triggered the transition.
The process of stimulated emission can be written as

$X^* + hν → X + hν + hν. \tag{5.28}$

The rate of stimulated emission is proportional to the intensity of the radiation field at the relevant frequency ``ν = \Delta E / h``.
Since stimulated emission increases the number of photons at this frequency, the process of stimulated emission, under the correct conditions, can greatly amplify the intensity of light with frequency ``ν = \Delta E / h``.
This is the process that is utilized in lasers.
"""

# ╔═╡ 31dfab13-6b04-4bd3-935d-2a8963010f4b
md"""
**Remark.**
Figure 5.4c shows that **collisional de-excitation** can occur.
In this case, the energy ``\Delta E`` is transferred to the free electron:

$X^* + \frac{1}{2} m_e v^2 → X + \frac{1}{2} m_e (v')^2, \tag{5.29}$

where in this case ``v' > v``.
During the process of collisional de-excitation, a photon is not emitted; all the energy is transferred to the kinetic energy of the outgoing free electron.
"""

# ╔═╡ c08da5b2-dc6f-48ff-8fe0-38b150032686
md"""
**Remark.**
When a sufficiently energetic photon is absorbed by a bound electron, the electron can become unbound, as shown schematically in Figure 5.5a.
This process is called **photoionization**, and requires a photon of energy ``hν > χ``, where ``χ`` is the ionization potential; unbound states are unquantized, so any photon with ``hν > χ`` can be absorbed.
The photoionization process releases an electron whose kinetic energy equals ``hν - χ``.
Written in symbolic terms, photoionization is the reaction

$X + hν → X^+ + \frac{1}{2} m_e v^2, \tag{5.30}$

where ``X^+`` is a positively charged ion.
"""

# ╔═╡ 0939d118-282c-4252-92d5-ec388d60146d
md"""
**Remark.**
**Collisional ionization** can occur when a free electron with kinetic energy greater than the ionization potential ``χ`` collides with the atom (see Figure 5.5b).
In this case,

$X + \frac{1}{2} m_e v^2 → X^+ + \frac{1}{2} m_e (v')^2 + \frac{1}{2} m_e (v'')^2, \tag{5.31}$

where ``v`` and ``v'`` are the precollision and postcollision speed of the ionizing free electron, and ``v''`` is the postcollision speed of the liberated electron.
The speeds ``v'`` and ``v''`` are determined by conservation of energy and momentum.
"""

# ╔═╡ 82048a8b-9d86-41f5-a7e0-41c19275ab61
md"""
**Remark.**
Finally, a free electron can be captured by an ion, with a photon carrying away the excess energy (Figure 5.6); this process is known as **recombination**.
During recombination, the electron's kinetic energy contributes to the energy of the photon produced:

$X^+ + \frac{1}{2} m_e v^2 → X + hν. \tag{5.32}$

Recombination can occur directly to the ground state, as shown in Figure 5.6a; this produces a photon with energy ``hν = χ + m_e v^2 / 2``.
However, recombination can also occur to excited states, as shown in Figure 5.6b; this results in a downward cascade that produces a series of photons whose energies sum to ``χ + m_e v^2 / 2``.
"""

# ╔═╡ 5175dfe4-57c1-4de5-b103-527975c07d17
md"## 5.3 Emission and Absorption Spectra"

# ╔═╡ 7c9b3b8a-6cf8-4e65-8fdb-ffb36248b903
md"""
**Definition.**
The **spectrum** of an object is its distribution of photons as a function of wavelength or energy.
"""

# ╔═╡ 6c10333b-83fd-4c0e-8abc-7bb1f839b137
md"## 5.4 The Equation of Radiative Transfer"

# ╔═╡ 2f0a072a-3645-4c02-9c19-00d676e75998
md"""
**Remark.**
We are now ready to consider how photons interact with matter on scales larger than the size of an atom.
"""

# ╔═╡ 6351141b-59fb-4101-ace2-f528bacb1f50
md"## 5.5 The Curve of Growth"

# ╔═╡ c301ac4f-ddb1-4172-9c8b-8d451ca52fd5
md"""
**Remark.**
Consider the absorption line due to one particular atomic transition in one particular type of atom or ion.
"""

# ╔═╡ 84488a9d-a5ed-4081-921c-f6058c5f38c2
md"## 5.6 Local Thermodynamic Equilibrium"

# ╔═╡ 4d5df495-3eaf-48c9-ba02-15ba6ae8646d
md"""
**Remark.**
In everyday life, when we talk about the temperature of an object, we are referring to what thermodynamicists technically call the **kinetic temperature**, which is a measure of the average kinetic energy per particle associated with random thermal motions.
For instance, suppose that the air around you has a temperature of 68° Fahrenheit, equivalent to 20° Celsius, or 293 Kelvin.
"""

# ╔═╡ 133ec813-228b-40bc-b761-e032c192b251
md"## 5.7 Blackbody Radiation"

# ╔═╡ fbc5c17b-91ce-4d9a-bbe2-ee3446bab517
md"""
**Remark.**
So far, we have discussed the production of emission and absorption spectra by low-density gas.
It is time to consider why dense gases, liquids, and solids produce a continuous spectrum, as described empirically in the first of Kirchoff's laws.
Let's start by considering the simple case of an ideal gas in LTE.
"""

# ╔═╡ 784254ac-4dae-4575-8d92-5101a3750547
md"# 6 Astronomical Detection of Light"

# ╔═╡ f4666bc8-21ea-41fc-9a39-2aa17e961bb3
md"""
**Remark.**
As the previous chapter revealed, there is a wealth of information to be gained from observing the stars.
In particular, spectroscopy of stars yields temperatures, elemental abundances, stellar rotation rates, and magnetic field strengths, among other information.
While stars are intrinsically luminous, they are (except for the Sun) at extremely large distances, and hence appear to be very faint.
The challenge facing astronomers over the centuries has been to collect the faint light from distant stars and other astronomical objects, and preserve and analyze the information it contains.
Large telescopes and sophisticated instrumentation are required.
"""

# ╔═╡ 2b04f14d-2d38-4587-83b6-507fd7102377
md"## 6.1 The Telescope as a Camera"

# ╔═╡ da95eaf6-d3d5-4cdf-9849-2f2831c0dfff
md"""
**Remark.**
In many ways, a telescope and its associated instrumentation can be thought of as a camera, albeit one with a very large and unwieldy telephoto lens.
A review of how cameras work will thus be useful for understanding the basics of imaging science.
"""

# ╔═╡ 5adc5ac1-1d84-4b43-b895-74d57a7decad
md"""
**Remark.**
A compact version of the camera obscura is the pinhole camera (Figure 6.2), an opaque box with a tiny pinhole in the middle of one wall.
"""

# ╔═╡ 1f645a7f-03d3-4f56-939f-88b6bb0535e4
md"""
**Remark.**
In order to reduce exposure times while keeping the image size large, photons must be emitted into the camera at a faster rate.
"""

# ╔═╡ bd1f7edf-dad3-4afd-aa8c-f01cbc686b9e
md"""
**Remark.**
A lens is made from a transparent material (often glass) whose **refractive index** is different form that of the air surrounding it.
"""

# ╔═╡ 31e0f842-8ba7-452e-a6f3-809ea89aacde
md"""
**Remark.**
A properly shaped lens will refract the light rays from a luminous object in such a way that all the light from a particular point on the object is directed to a single point on the image plane.
"""

# ╔═╡ bb246e16-2ec8-4d31-ae96-0d97b21fe0b0
md"""
**Remark.**
Another useful parameter, in addition to the focal length, is the scale of the image on the focal plane, known for historical reasons as the **plate scale**.
"""

# ╔═╡ 7fb0742a-07f9-4393-ab72-9eb6e04fc5de
md"""
**Remark.**
Large astronomical telescopes have focal lengths that are more conveniently expressed in meters than in millimeters.
"""

# ╔═╡ 1e3e93b1-1e85-4a30-adb5-19c3492ae899
md"""
**Remark.**
For a given aperture size ``D``, we can increase the size of the image simply by increasing the focal ratio ``f`` of the lens.
"""

# ╔═╡ 08e906bd-863a-4bfb-9372-018756675553
md"""
**Remark.**
Thus, for an ordinary ground-based telescope, making the aperature larger than ``D ∼ 0.5 \text{ m}`` does not improve the resolution of the image.
"""

# ╔═╡ 5544b2b4-38b1-4c11-8db2-d2a57ac6ec05
md"## 6.2 Refracting and Reflecting Telescopes"

# ╔═╡ de5d52ac-0c68-4acf-9e26-8c68b7be6e06
md"""
**Remark.**
So far, we have assumed that the primary light-gathering element of the telescope (called the **primary** for short) is a lens.
"""

# ╔═╡ d30ebff4-bdbd-49ea-bc3a-24aae0c18544
md"""
**Remark.**
Matters are made worse by the fact that the heavy lens is at the top of a long tube that must be extremely stiff; otherwise, the tube will flex and wobble as it swings around to point in different directions on the sky.
"""

# ╔═╡ b1565def-3921-41ec-b485-dd5ab76d81a1
md"""
**Remark.**
An alternative to using lenses is to bring the light to a focus by using a concave mirror.
"""

# ╔═╡ 97e0e4fe-a9b1-4359-9fff-be60d2508b5b
md"""
**Remark.**
The preferred material for mirrors is glass, because it can be shaped to extremely high accuracy; if you are observing at a wavelength ``λ``, you want any bumps and valleys on the mirror surface to be smaller than ``∼λ / 4`` in height.
"""

# ╔═╡ 08cc6f1f-59c1-42e1-b387-f6f2ece82f18
md"""
**Remark.**
An obvious problem with reflectors is that the focal plane lies between the mirror and the light source.
"""

# ╔═╡ 02fa4113-1c8b-4ce0-bd13-2e02df64ee76
md"""
**Remark.**
The most commonly used focus in moderate-size research telescopes, a few meters in aperature, is the **Cassegrain focus** (Figure 6.8c).
"""

# ╔═╡ ff86c6a8-e97d-4257-a317-a41bcfc5ba0f
md"""
**Remark.**
In general, multiple reflections in a telescope are undesirable.
"""

# ╔═╡ fdf2eabf-6eb0-454f-99e2-dae256794a76
md"## 6.3 Quality of Images"

# ╔═╡ a0c4d75c-f676-4747-a145-3ebe1301d078
md"""
**Remark.**
All optical systems suffer from different types of aberrations, some of which are inherent to the design of the system, and some of which arise due to errors in manufacture or the wear and tear of everynight use.
"""

# ╔═╡ 63d0abf2-97ff-46b6-8324-dc1cb1dfb97d
md"""
**Remark.**
Astronomical images of point-like sources, such as distant stars, are never observed to be true mathematical points.
"""

# ╔═╡ dfe59bae-4529-4b92-b414-00f746f47a1c
md"## 6.4 Astronomical Instruments and Detectors"

# ╔═╡ 4d623612-dbef-4ff7-a3d2-a08f5916c779
md"""
**Remark.**
Astronomical instruments fall into two basic categories: **imaging cameras** and **spectrographs**.
Most instruments are one or the other, but some are a hybrid of the two.
"""

# ╔═╡ 311125e9-9c98-4922-9380-a5d589cdf6cc
md"""
**Remark.**
Imaging cameras are designed to produce high-quality images over a suitably large field of view.
"""

# ╔═╡ 362dd106-1674-40dc-b4ff-f5cb60dac30a
md"""
**Remark.**
Spectrographs are designed to disperse light by wavelength, in order to produce spectrograms of astronomical sources.
"""

# ╔═╡ 179a9246-00d1-4af0-bd23-d2ddb39edc3b
md"""
**Remark.**
Many types of detector technologies are used in astronomical observations; we will restrict ourselves to making a few general observations.
"""

# ╔═╡ 88d4190d-fa0f-44c1-a192-ae1a14c85d48
md"""
**Remark.**
Most modern astronomical detectors fall into one of two categories: photoemissive or photoconductive.
"""

# ╔═╡ f7e332e6-cec0-43ee-9285-941e80f9b72a
md"""
**Remark.**
**Photoconductive** detectors are solid state devices that accumulate local charges as photons strike them.
"""

# ╔═╡ 00aa07f9-9850-4f13-b32a-5de4023bcb22
md"""
**Remark.**
CCDs come in various shapes, generally either a square or an elongated rectangle (useful for spectroscopy).
"""

# ╔═╡ 25295fdf-544f-4256-a734-d50f59b381eb
md"## 6.5 Observations and Photon Counting"

# ╔═╡ f1af37e8-ff00-496d-a21d-5125dbf86692
md"""
**Remark.**
One practical problem that an observer faces is determining how long to observe a particular source in the sky.
"""

# ╔═╡ 8deed918-b45e-4286-9955-3f4c0b61fedd
md"""
**Remark.**
In an astronomical observation, we detect an integral number of photons from a particular source.
"""

# ╔═╡ c20e1a79-0f6d-4007-95b1-5a308e53b6bc
md"""
**Remark.**
We would also like to know the width of the distribution ``P(x,μ)``; in other words, if we perform the experiment only once, how far from ``μ`` is ``x`` likely to be?
"""

# ╔═╡ 74b6d207-304a-4108-a1b7-79d5671e19d2
md"""
**Remark.**
As the expected number of photons ``μ`` increases (by increasing the exposure time, for instance), the uncertainty increases more slowly, like ``μ^{1/2}``.
"""

# ╔═╡ 5dc13013-890c-4733-99b6-c751de2c437d
md"""
**Remark.**
The signal-to-noise ratio is ``S/N = μ^{1/2}`` if fluctuations in the photon count are the only source of uncertainty.
"""

# ╔═╡ 595f0a7b-1a8e-4211-a678-31941240a067
md"""
**Remark.**
Astronomers frequently find themselves doing faint-object astronomy; this is the case where the source counts are outnumbered by the background counts ``(μ_b > μ_s)``.
In this case, the signal-to-noise ratio is

$S/N ≈ \frac{μ_\text{s}}{μ_\text{b}^{1/2}}, \tag{6.23}$

and the observation is referred to as **background limited**.
"""

# ╔═╡ 1a59b87d-d4cc-4682-9cfe-656fc0e03a41
md"""
**Remark.**
In addition to photons from the star itself, we also detect background photons.
"""

# ╔═╡ bfb7ee81-998d-488a-a5c1-4921cad05192
md"""
**Remark.**
In the background limited case, the signal-to-noise ratio is thus (combining equations 6.23, 6.25, and 6.26)

$S/N ≈ \frac{μ_\text{s}}{μ_\text{b}^{1/2}} ≈ \frac{ṅ_\text{s} t}{(ṅ_\text{b} t)^{1/2}} ∝ \frac{F_λ D ϕ_a}{θ} \left(\frac{\Delta λ ϕ_t q}{S_λ} t\right)^{1/2}. \tag{6.27}$
"""

# ╔═╡ a219c60c-fea2-41ee-b696-d644df27c529
md"""
**Remark.**
If you observe a region of the sky containing many stars, then the **limiting flux** is the flux of the faintest star that you can detect at a specified signal-to-noise ratio ``S/N`` during an integration time ``t``.
"""

# ╔═╡ e8cb77a6-3128-4fd4-a0a5-77eeef0e3e37
md"## 6.6 Observations at Other Wavelengths"

# ╔═╡ ea135f9f-e782-4721-b10d-5d1472f28ec2
md"""
**Remark.**
In the previous sections, we implicitly assumed that we were observing at visible wavelengths.
"""

# ╔═╡ bb2d77e5-2dff-4244-8e0a-44630d43614f
md"""
**Remark.**
The other transparent "window" through the Earth's atmosphere is in the radio portion of the spectrum.
"""

# ╔═╡ 3d0b2b09-2ab7-4316-89ca-fbbed0807f3d
md"""
**Remark.**
Radio telescopes are generally much larger than optical telescopes, primarily to obtain adequate angular resolution.
"""

# ╔═╡ ae33c986-627c-4684-833b-88ef8ab211e7
md"""
**Remark.**
The largest single-dish radio telescope in operation is the Arecibo Telescope, in Puerto Rico.
"""

# ╔═╡ 71e99570-17c4-49cb-ad86-beb3495cd389
md"""
**Remark.**
At wavelengths that do not correspond to an atmospheric "window," observations must be made from above the Earth's atmosphere.
"""

# ╔═╡ aa04185f-e2ba-4d06-8057-fce70fd8c067
md"""
**Remark.**
The current generation of X-ray telescopes uses "grazing incidence" mirrors; if X-ray photons strike a metal surface at an angle less than a small critical angle (typically 2° or less), it will reflect off rather than be absorbed.
"""

# ╔═╡ 4cbc13f3-fef4-4725-b663-f683ed0744b1
md"""
**Remark.**
The biggest challenge for space telescopes operating at infrared wavelengths is separating the signal from distant sources from the thermal background emitted by the telescope and its detectors.
"""

# ╔═╡ 416f2c61-b2e5-43ec-bb6f-0fd7435132d2
md"""
**Remark.**
Even at visible wavelengths, there is a major advantage to going above the Earth's atmosphere; telescopes in orbit are diffraction-limited instead of seeing-limited.
"""

# ╔═╡ d7c79e3e-424d-4a7d-9cb2-7f4a1af19b15
md"""
**Remark.**
There are distinct disadvantages, as well as the obvious advantages, to placing astronomical telescopes in space.
"""

# ╔═╡ 0007c9a2-89c6-442a-a026-0f249f1390b3
md"""
**Remark.**
There are a number of misconceptions about the supposed advantages of space astronomy:

- Misconception: *In space, you can observe a celestial object continuously, not just at night.*

- Misconception: *The sky seen from orbit is dramatically darker than the night sky on Earth.*

- Misconception: *Observations from space are not affected by weather.*
"""

# ╔═╡ 0e84740b-748e-41bc-9d4d-cf0bfb401f30
md"## 6.7 Modern Telescopes"

# ╔═╡ 1ece6c1a-fc25-462c-a80a-0cdc5c4d99af
md"""
**Remark.**
During the 1960s, 70s, and 80s, the major advances in observational astronomy were due to improvements in detector technology and the opening of new spectral windows through space observations.
"""

# ╔═╡ dcfc35c9-b404-4581-a517-6275e82a9760
md"""
**Remark.**
To minimize the image size, we must first select sites that are capable of delivering good seeing; these are generally at high altitudes (so there is less air above the telescope) in regions where the air flow is smooth and laminar.
"""

# ╔═╡ ef836db6-9b4e-45dd-b7d6-db6664a4d0dc
md"""
**Remark.**
Maximizing the collecting area of telescopes means making larger mirrors.
"""

# ╔═╡ d6f49bdb-ce18-497d-8384-742667f29d70
md"# 7 The Sun"

# ╔═╡ 1a078de0-7148-4bcb-9fe2-e75fe28b22e4
md"""
**Remark.**
Although the Sun is more massive and more luminous than most of the stars in its neighborhood, it is by no means freakishly bright.
"""

# ╔═╡ 82f2bad8-bddb-4eaa-90f5-ac4d135d097e
md"## 7.1 Observable Layers of the Sun"

# ╔═╡ ec8505a5-83f5-43aa-a7e7-f8fb7b0da1a1
md"""
**Remark.**
An image of the Sun at visible wavelengths (Figure 7.1) has a sharp, well-defined boundary, implying that the Sun has a well-defined surface.
The observed surface of the Sun at visible wavelengths is the **photosphere**.
"""

# ╔═╡ 18e73052-b3be-408b-8eeb-16cd750bd0d4
md"""
**Remark.**
Because the top of the photosphere is cooler than the layers beneath, the photosphere produces absorption lines in the spectrum of the Sun.
"""

# ╔═╡ 90d5585a-7ad1-4989-b021-ae18372fde7f
md"""
**Remark.**
In the photosphere, the principal source of opacity is the ``𝐇^-`` **ion**, that is, a hydrogen atom with an additional electron.
"""

# ╔═╡ 43631ee1-77a1-4cdb-acbc-54197e5dfdd9
md"""
**Remark.**
The photons that we observe from the photosphere come from a variety of depths, and thus, given the temperature gradient across the photosphere, represent blackbody emission at a range of temperatures.
"""

# ╔═╡ 06398cfc-bc17-40b2-81b4-59e9c6a7de0e
md"""
**Remark.**
As a consequence of this effect, the Sun displays **limb darkening**; the surface brightness is greater at the center of the Sun's disk because photons we see come from deeper, hotter layers of the photosphere, on average.
"""

# ╔═╡ 94a5d183-b394-49f6-ba48-a54f484f3ecb
md"""
**Remark.**
When the Sun's disk is viewed at high angular resolution, the photosphere is seen to be broken up into **granules** (Figure 7.3).
"""

# ╔═╡ cc73a223-14fa-4d80-ac4e-598166b56a61
md"""
**Remark.**
The **chromosphere** is the layer of the Sun's atmosphere immediately above the photosphere.
"""

# ╔═╡ ba3a3c3a-b019-40ad-af0b-d31fc22784b6
md"""
**Remark.**
The temperature of the chromosphere increases with distance from the Sun's center (unlike the temperature structure of the photosphere, where the temperature drops with increasing distance).
"""

# ╔═╡ 4f292e61-4ccf-45e8-ae5b-c714491492c7
md"""
**Remark.**
If you are insufficiently patient to wait for a total solar eclipse, you can also observe the chromosphere by using a **spectroheliogram**.
"""

# ╔═╡ abaa0cbc-5ceb-4ab1-8c43-d27e5e517cb6
md"""
**Remark.**
On finer scales, the chromosphere shows features called **spicules**, which are relatively narrow columns of gas moving vertically at speeds of ``∼10 \text{ km s}^{-1}``.
"""

# ╔═╡ edd36c6e-8981-4c53-870f-cd9ba46e11f4
md"""
**Remark.**
The **corona** is the outer layer of the Sun's atmosphere.
"""

# ╔═╡ decd0156-994f-416a-b6ca-a6855bf33db7
md"""
**Remark.**
When the spectrum of the K corona was first studied in the nineteenth century, it was found to have a green emission line ``(λ = 5303 \text{ Å})`` that didn't correspond to any known element.
"""

# ╔═╡ 2e53d259-99fb-4089-a6d2-660e120f0924
md"""
**Remark.**
The light emitted by the F corona, farther from the photosphere, consists of light from the photosphere that has scattered from dust grains.
"""

# ╔═╡ ad4ea173-27e1-4120-94a6-e306534afc86
md"""
**Remark.**
Detailed study of the structure of the solar atmosphere reveals that the temperature jumps upward from ``T ∼ 10^4 \text{ K}`` to ``T ∼ 10^6 \text{ K}`` in a thin transition region between the chromosphere and the corona (Figure 7.6).
"""

# ╔═╡ cd48063d-36ab-42c1-9323-c7d7f8e61dcd
md"""
**Remark.**
The rms speed of the protons in the hot corona is (equation 5.48):

$v_\text{rms} = \left(\frac{3kT}{m_p}\right)^{1/2} ≈ 160 \text{ km s}^{-1} \left(\frac{T}{10^6 \text{ K}}\right)^{1/2}. \tag{7.2}$
"""

# ╔═╡ ca1d0f3c-d3c1-489e-b85d-2bbf5cc279ba
md"""
**Remark.**
The solar wind has been measured by interplanetary spacecraft; at ``r = 1 \text{ AU}`` from the Sun, the speed of the wind is ``v ∼ 400 \text{ km s}^{-1}``, on average, while the number density of particles is ``n ∼ 10^7 \text{ m}^{-3}``.
"""

# ╔═╡ 4572b741-6ee9-47ff-927b-50fa8b2ecb47
md"## 7.2 Solar Activity"

# ╔═╡ d6030c4d-00fd-479a-aa7d-7940d9f4ca04
md"""
**Remark.**
Violent and variable phenomena in the Sun's atmosphere are collectively referred to as **solar activity**.
All forms of solar activity are tied to the complex magnetic field of the Sun.
"""

# ╔═╡ e42ce597-2dc7-4272-a30e-7d20d85369c9
md"""
**Remark.**
A particle with electric charge ``q`` is moving with a velocity ``\vec{𝐯}`` through a magnetic field.
"""

# ╔═╡ 95f765a1-82d4-4297-ade1-98d69bffe7ae
md"""
**Remark.**
Magnetic field lines thus tend to guide charged particles; the helix along which a particle moves is wrapped around a magnetic field line like a vine wrapped around a beanpole.
"""

# ╔═╡ 854a95de-8ba1-4bba-b009-4c3f63c44344
md"""
**Remark.**
Within the Sun, the gas pressure is given by the ideal gas law, ``P_\text{gas} = nkT``, where ``n`` is the particle density, ``T`` is the temperature, and ``k`` is Boltzmann's constant.
"""

# ╔═╡ 3ee02898-9fe3-4cb2-bcb6-2f1a06987ba4
md"""
**Remark.**
Many observable properties vary along with the Sun's time-variable magnetic field.
"""

# ╔═╡ 034815ec-86fb-4f09-aab6-447bc0485e70
md"""
**Remark.**
Sunspots were first seen by Chinese astronomers over 2000 years ago; at sunrise and sunset, large sunspot groups (similar to those in Figure 7.11) can be seen with the naked eye.
"""

# ╔═╡ 1e119b62-93bb-4d4f-8217-3ff163ecd348
md"""
**Remark.**
The strong magnetic fields within sunspots explain why they are cooler than their surroundings.
"""

# ╔═╡ 2627e730-89e0-4601-81dd-51a786547964
md"""
**Remark.**
The number of sunspots visible at any given time varies over an 11-year cycle, as shown in Figure 7.13.
"""

# ╔═╡ 289f9036-a2a3-4e3d-815a-7edf28bf246b
md"""
**Remark.**
Sunspots tend to occur in pairs of opposite magnetic polarity; that is, the magnetic field lines run upward out of one sunspot and downward into the other sunspot.
"""

# ╔═╡ e0f462ea-e854-49e8-a03f-ccd3b2649a36
md"""
**Remark.**
In the photosphere, the gas pressure exceeds the magnetic pressure (although only by a relatively small margin in sunspots).
"""

# ╔═╡ 1f0c1eca-9a5f-479f-a688-175a7e2bc21c
md"""
**Remark.**
Large prominences can be highly energetic, with gas moving upward at speeds higher than the Sun's escape speed.
"""

# ╔═╡ f3d85558-1319-4ad2-8160-47c9e4abe583
md"""
**Remark.**
**Solar flares** are events that can be even more energetic than coronal mass ejections.
"""

# ╔═╡ 7be5ae38-c16d-47f2-9f32-68a2dc533164
md"""
**Remark.**
Both coronal mass ejections and solar flares produce charged particles that can interact with the Earth's magnetic field.
"""

# ╔═╡ d0d89cea-9914-4512-aaca-a33d4c82202c
md"## 7.3 Angular Momentum of the Sun"

# ╔═╡ fb5df85c-4a8a-4be8-bcd0-156004b9f132
md"""
**Remark.**
Although the Sun contains 99.8% of the mass of the solar system, Jupiter contains most of the angular momentum.
"""

# ╔═╡ 7ef7e1da-5d4e-4b5f-938d-a6b864829c58
md"""
**Remark.**
The ratio of Jupiter's orbital angular momentum to the Sun's rotational angular momentum is

$\frac{L_\text{Jup}}{L_⊙} ≈ \frac{5}{2} \left(\frac{m_\text{Jup}}{M_⊙}\right) \left(\frac{a_\text{Jup}}{R_⊙}\right) \left(\frac{ω_\text{Jup}}{ω_⊙}\right) \sqrt{1 - e^2}.\tag{7.22}$
"""

# ╔═╡ 168258e3-8066-4c4b-bd92-0a88ea5d6efa
md"""
**Remark.**
One way in which the Sun can lose angular momentum is to have it carried off by the solar wind.
"""

# ╔═╡ 4bca8e8c-2cec-45fb-b042-f9ec83b305f6
md"""
**Remark.**
However, the above calculation neglects the effect of the Sun's magnetic field.
"""

# ╔═╡ 8396a98f-c95e-4c7b-b881-6735725c069d
md"""
**Remark.**
Since the magnetic flux is conserved, we can write for an arbitrary distance ``r`` from the Sun's center

$4πr^2B(r) = 4π R_⊙^2 B_⊙,\tag{7.28}$

assuming that the magnetic field ``\vec{𝐁}`` is purely radial.
"""

# ╔═╡ f1251273-0499-4568-b6c5-37cfe0fbba1e
md"# 8 Overview of the Solar System"

# ╔═╡ 173607da-b2a3-41af-b929-ae4a73ec8142
md"""
**Remark.**
Our aim over the next four chapters is to understand the basic characteristics of the solar system, and to integrate this information into a self-consistent picture of how the solar system formed and how it has evolved with time.
"""

# ╔═╡ 5c96f874-a25c-4aaf-a369-9c5935033f2e
md"## 8.1 Two Types of Planets"

# ╔═╡ c159252e-c50a-418f-83bd-8a4053d813c8
md"""
**Remark.**
The planets can be divided into two major types, or families, each named after their largest number.
"""

# ╔═╡ 59764141-cac8-4e33-bcf5-9ca3a999576b
md"""
**Remark.**
Any useful theory for the origin of the solar system must explain the observed differences between terrestrial and Jovian planets.
"""

# ╔═╡ 254505c1-0f38-4cec-9919-21c4a6c6aa97
md"## 8.2 Physical Properties of Planets"

# ╔═╡ ff0b1bf0-6d53-4aaa-aeee-b24b0aad4d0a
md"""
**Remark.**
The masses of astronomical objects are measured by looking at how they accelerate neighboring objects.
"""

# ╔═╡ efa05e66-b6fb-4dc3-8f9c-0eec1250a59c
md"""
**Remark.**
The radius ``R`` of a planet is computed from its measured angular radius and its distance.
"""

# ╔═╡ 6437c971-603b-4deb-86bb-5d41a59a0ca7
md"""
**Remark.**
The surface temperature ``T`` of objects in the solar system depends on a number of factors.
"""

# ╔═╡ d908f92e-73d1-4eb1-86bd-2af65111d5bc
md"""
**Remark.**
The Sun, to a rough approximation, radiates like a blackbody.
"""

# ╔═╡ d8a6e074-f331-4b40-8447-9bf4ca507939
md"""
**Remark.**
The flux of energy received by a planet at a distance ``r`` from the Sun is

$F(r) = \frac{L_⊙}{4πr^2}. \tag{8.5}$
"""

# ╔═╡ f4dcebf7-b1cf-44f7-bb0f-16b4c2b407af
md"""
**Remark.**
When the planet is in equilibrium, the rate at which energy is emitted by the planet, ``L_p``, is equal to the rate at which energy is absorbed by the planet, ``W_p``.
"""

# ╔═╡ 66820f96-ff44-42b6-a9fa-8ac849bd6d7f
md"""
**Remark.**
The assumption of uniform surface temperature ``T_p`` is a good approximation for a planet that is rotating rapidly.
"""

# ╔═╡ 5fefdf4e-c256-4b22-9685-fa600c9efcf6
md"""
**Remark.**
Real objects within the solar system are neither perfectly white ``(A = 1)`` nor perfectly black ``(A = 0)``.
"""

# ╔═╡ ed7b232e-c8b9-4cb7-8b99-3ea780d1b301
md"""
**Remark.**
In Table 8.3, we give the computed surface temperatures, ``T_p``, for a sample of three planets; we give both the case of uniform temperature and that of slow rotation.
"""

# ╔═╡ e98c5ce6-3d64-49fd-817c-39591bd0714e
md"""
**Remark.**
The greenhouse effect occurs when a planet's atmosphere is transparent at visible wavelengths but opaque at infrared wavelengths.
"""

# ╔═╡ 9df51017-ff6d-48d3-a455-72445ca8c52a
md"""
**Remark.**
The flux of light we observe from a planet depends on wavelength.
"""

# ╔═╡ a72131df-bbe7-406b-9df4-dc6489aa2ccd
md"""
**Remark.**
An underlying reason for many of the observed differences between terrestrial and Jovian planets is that the Jovian planets have a chemical composition that closely resembles that of the Sun; that is, they are mostly hydrogen and helium.
"""

# ╔═╡ 55c157c8-afd1-41d9-879f-1e098137da1f
md"""
**Remark.**
Let's consider the conditions under which planets can retain different atmospheric gases.
"""

# ╔═╡ 8d5244fc-f3a8-494e-9cc9-213fd66594c6
md"""
**Remark.**
To compute where the exobase lies, let's assume that gas particles in the atmosphere have an average cross-section ``σ`` for collisions.
"""

# ╔═╡ 4744bdac-06c5-4e50-8806-4edcfc506a3f
md"""
**Remark.**
At the exobase, the rms speed of gas particles with mass ``m`` will be

$v_\text{rms} = \left(\frac{3kT_\text{ex}}{m}\right)^{1/2},\tag{8.17}$

where ``T_\text{ex}`` is the temperature at the exobase.
"""

# ╔═╡ c480387e-2066-4a7d-a238-8e99c717a099
md"""
**Remark.**
The Earth's exobase has a higher temperature than the atmosphere at sea level, because the upper atmosphere is heated by interactions with high-energy solar wind particles; during daytime, the exobase temperature is ``T_{\text{ex},⊕} ≈ 1000 \text{ K}``.
"""

# ╔═╡ 2336663b-c2c3-4145-8f50-9d5d759e10d5
md"## 8.3 Formation of the Solar System"

# ╔═╡ c9760224-2d0f-4baa-9192-131af8a79933
md"""
**Remark.**
In this section, we give a broad overview of current ideas about how the solar system formed.
We return to this topic in Chapter 12 and fill in some of the details.
"""

# ╔═╡ 71abde62-c2a6-4d13-a814-f4b83cb8241b
md"""
**Remark.**
The modern view of planetary formation is that it is a natural consequence of star formation.
Put simply, formation of planets is a way for a collapsing gas cloud to rid itself of angular momentum so that it can shrink to the size of a star.
Star formation occurs when a large gas cloud collapses under its own gravity; since this can happen only if the self-gravity exceeds the support provided by gas pressure, star formation occurs only in dense, cold ``(T ≤ 10 \text{ K})`` regions of interstellar gas.
If the collapsing gas cloud has a net angular momentum, it will collapse until it forms a rotationally supported disk.
The dense central region of the disk ultimately becomes a star, while smaller condensations that occur within the disk ultimately grow into planets.
Such rotationally supported, dusty, gaseous disks, called **protoplanetary disks**, are seen around young stars in our galaxy.
For instance, Figure 8.3 shows a protoplanetary disk in the Orion Nebula.
The edge-on protoplanetary disk resembles an edge-on hamburger: the dark "patty" represents a thin, dust-rich disk, and the bright "buns" consist of light from the central protostar scattered by a more diffuse distribution of dust.
"""

# ╔═╡ c2f660da-c4fb-4c76-81c7-1dbcacd80a6d
md"""
**Remark.**
The first step in planet formation is **condensation**, the formation of solid particles within the gaseous disk as it cools.
Different materials condense into solids at different temperatures; metals condense at high temperatures, rocky materials at intermediate temperatures, and ices at low temperatures.
Materials that condense into a solid (or liquid) only at very low temperatures are called **volatile** materials.
The gaseous disk from which the planets ultimately form is hottest at the center, where the protosun is located, and becomes cooler with increasing distance.
In the central parts of the protoplanetary disk, only the most refractory materials can condense to form solid particles; a **refractory** material is one that condenses into a solid (or liquid) at relatively high temperatures.
In the outer parts of the disk, by contrast, the temperature is sufficiently low that even volatile materials can condense.
Table 8.4 gives approximate condensation temperatures for different substances; the right-hand column lists the planets that will ultimately form at the given temperature.
"""

# ╔═╡ ff096419-4627-44c2-9581-21a1febe147d
md"""
**Remark.**
Condensation, more specifically, is the process by which solids grow molecule by molecule, as individual molecules (or atoms) adhere to the solid body.
"""

# ╔═╡ ba9635bf-03b1-4970-8464-3e645412d51a
md"""
**Remark.**
Eventually, planetsimals are drawn toward each other by gravity and merge to form larger bodies; this process is known as **coalescence**.
"""

# ╔═╡ f223e879-7c03-42fc-ab69-1e3e864b122c
md"""
**Remark.**
In the outer part of the protoplanetary disk, containing planetesimals of both high-volatility and low-volatility materials, larger bodies are able to form.
"""

# ╔═╡ a0426e37-2462-4d37-81eb-848419f87e47
md"""
**Remark.**
Protoplanets grow gradually by the coalescence of planetsimals until they reach the masses of the planets as we know them today.
"""

# ╔═╡ abaefd39-5cf9-4b36-9110-a5eb7a337a96
md"""
**Remark.**
**Chemical differentiation** is the process by which dense elements sink to the center of terrestrial planets while the lower-density elements float up to the surface.
"""

# ╔═╡ c41ae059-23e2-4f91-915e-6a5681d3425b
md"""
**Remark.**
**Cratering** begins as the newly formed planets sweep up the remaining planetsimals.
"""

# ╔═╡ 3976eae4-c77e-4d21-bf85-22cecc6f784a
md"""
**Remark.**
**Volcanic flooding** of planetary surfaces occurred at the same time as cratering.
"""

# ╔═╡ becf7e2d-5cfb-46d9-9c59-2a989cd5c3cf
md"""
**Remark.**
The surface of a terrestrial planet can change with time; so can its atmosphere.
The atmospheres of terrestrial planets evolve for several reasons:

1. Gases can escape from planets if the individual gas particles are moving sufficiently rapidly, as discussed in Section 8.2.
   Planets with cooler temperatures and higher surface gravity will retain more of their primeval atmosphere.

2. Outgassing from the planet's interior releases gases that were trapped in the interior during the formation process.
   These planetary belches occur as part of the differentiation process and continue through ongoing volcanic activity.

3. Chemical interactions between the atmosphere and the surface can alter the atmosphere's composition.
   For instance, the interaction of gaseous CO₂ with liquid water removed most of the CO₂ from the Earth's atmosphere and dissolved it in the Earth's oceans.
"""

# ╔═╡ 30010609-d31d-4f19-9577-a75430e0b3f9
md"""
**Remark.**
The mechanism by which planetary magnetic fields are generated is poorly understood.
In general terms, it is thought to result from dynamo action in the planetary core; hot, partially ionized matter wells up by convection in planetary interiors and is deflected by the Coriolis effect.
Our expectation, then, is that larger magnetic fields will be found to be associated with larger bodies (which will have larger liquid cores) and faster rotators (which will have a larger Coriolis effect).
In fact, as we will see, the planet Jupiter, which is both the largest and the fastest rotating planet in the solar system, has the strongest magnetic field.
"""

# ╔═╡ 44da4fb0-780e-4549-a23f-e79c8e30ad15
md"# 9 Earth and Moon"

# ╔═╡ 9e3b50a7-1b38-42c0-9c44-adae0b1986e1
md"""
**Remark.**
In this chapter, we will concentrate on the large-scale characteristics of the Earth (the planet about which we have the most information) and the Moon (the satellite about which we have the most information).
We will later use our knowledge of the Earth and Moon for purposes of comparison to other terrestrial planets and rocky satellites.
"""

# ╔═╡ b5de78a5-a768-4a7f-b70c-d197657b9c77
md"## 9.1 The Earth's Interior"

# ╔═╡ dae411a6-03d0-4620-bb5f-34609df3aad8
md"""
**Remark.**
The interior of the Earth is highly differentiated, with the densest material in the center.
"""

# ╔═╡ fb10aedf-ea56-49da-a01e-db221ddc6119
md"""
**Remark.**
The deepest holes drilled by humans have reached only 12 km into the crust.
Thus, we are forced to infer the properties of the mantle and core from indirect means.
The most fruitful method for studying the Earth's interior is the analysis of **seismic waves**.
A seismic wave is a disturbance, usually generated by an earthquake, that travels through the Earth's interior.
There are two main types of seismic wave, as illustrated in Figure 9.2.
**P-waves**, or pressure waves, are compressional waves; they are regions of alternating high and low pressure traveling through the Earth.
Individual particles move back and forth in a direction parallel to the direction of wave propagation.
In short, a P-wave is a sound wave.
By contrast, **S-waves**, or shear waves, are transverse waves; that is, the individual particles move back and forth in a direction perpendicular to the direction of wave propagation.
S-waves are thus analogous to the waves that travel along a rope when you wiggle one end back and forth.
"""

# ╔═╡ 8dac0e91-7f60-40c5-8281-5a2f7a38631b
md"""
**Remark.**
When an earthquake occurs, most of the energy is released within a small region known as the hypocenter of the earthquake.
"""

# ╔═╡ b83d9f20-3653-4493-979b-dd5f9b3385ef
md"""
**Remark.**
Computing the position of the hypocenter is complicated by the fact that seismic waves, as illustrated in Figure 9.3, do not generally travel along straight lines.
"""

# ╔═╡ b8aa03ab-bb8c-401f-8df2-b1c49670b255
md"""
**Remark.**
Observations of seismic waves indicate that S-waves are detected only within ``103^∘`` of the epicenter.
"""

# ╔═╡ c5d4fc74-0b8c-4668-9f68-7f2f30264d74
md"""
**Remark.**
The solid surface of the Earth, known as the **lithosphere**, consists of the solid crust plus the upper solid part of the mantle, down to a depth of ``∼ 100 \text{ km}``.
"""

# ╔═╡ 838b4433-afa3-4af8-ba3e-855d7767a7bf
md"""
**Remark.**
The Earth's core is at a temperature of ``T ∼ 5000 \text{ K}``; because metals are good conductors of heat, the temperature within the core is nearly constant with radius.
"""

# ╔═╡ e67ed33b-d41d-497e-82e1-d8562f6db03c
md"""
**Remark.**
The measured geothermal heat flux through the surface of the Earth is ``F_\text{geo} ≈ 5 × 10^{-2} \text{ W m}^{-2}``, on average (although it's much higher in Iceland).
"""

# ╔═╡ 5c64061c-b7bc-46a5-a4f3-25e7990000c8
md"## 9.2 The Earth's Atmosphere"

# ╔═╡ 8939c2ed-c030-4f13-a2d4-e2dd15be7ff2
md"""
**Remark.**
The Earth's atmosphere has evolved through a number of stages.
"""

# ╔═╡ f65d9676-e998-4080-8e00-1f32290e01a4
md"""
**Remark.**
Something interesting happened on Earth some 3 billion years ago; the first life-forms appeared.
"""

# ╔═╡ f5add47f-1d8d-4d93-8d5b-0e5940b304ca
md"""
**Remark.**
The dense body of the Earth exerts a gravitational focre on the Earth's atmosphere; the atmosphere is stabilized against gravitational collapse, however, by a pressure gradient.
"""

# ╔═╡ ae7a9c85-cd01-4d2b-8a72-40924de81cba
md"""
**Remark.**
The equation of hydrostatic equilibrium is particularly simple when the pressure is described by the ideal gas law, as it is in the atmospheres of planets and all throughout the Sun.
"""

# ╔═╡ 90fbc24d-d4f4-4def-81ff-621c4258ba0b
md"""
**Remark.**
In general, the acceleration ``g``, the mean molecular mass ``μ``, and the temperature ``T`` are all functions of ``r``.
"""

# ╔═╡ 521fffc3-e32b-44ee-b4de-3a3e63c79fb4
md"""
**Remark.**
For the Earth's atmosphere, we can take ``T_⊕ = 290 \text{ K}`` for the average temperature, and ``g_⊕ = 9.8 \text{ m s}^{-2}`` for the gravitational acceleration.
"""

# ╔═╡ 43f70007-3746-4bef-8139-02d2449bda81
md"""
**Remark.**
Our calculation of the scale height ``H`` of the Earth's atmosphere assumed that the atmosphere was isothermal, that is, the same temperature throughout.
"""

# ╔═╡ 2fc588b3-125a-4a04-a8a7-78aa2c058978
md"""
**Remark.**
The **troposphere** is the lowest layer of the atmosphere, in direct contact with the Earth's surface.
It is heated primarily by absorption of the thermal infrared emission from the surface.
"""

# ╔═╡ 6c45d267-b790-420e-9e47-82314fc70c13
md"""
**Remark.**
The **stratosphere** starts ``∼ 11 \text{ km}`` above the surface, where the convective motion of the troposphere ends.
The stratosphere is heated primarily by the absorption of direct solar ultraviolet light by ozone (O₃).
"""

# ╔═╡ c9d242fd-b949-4f6b-b31b-16dd46f27e25
md"""
**Remark.**
In the **mesosphere**, which extends from ``∼ 50 \text{ km}`` to ``∼ 90 \text{ km}`` above the surface, there is little O₃ or CO₂ to absorb UV or IR radiation.
The mesosphere is the layer of the atmosphere in which most meteors burn up.
"""

# ╔═╡ a6562ff8-5e75-4757-83ad-41ffd02f7990
md"""
**Remark.**
The **thermosphere** extends from ``h ∼ 90 \text{ km}`` to ``∼ 500 \text{ km}``.
The thermosphere is sufficiently hot to be partially ionized.
The regions within the atmosphere that have high concentrations of charged particles are known collectively as the **ionosphere**.
"""

# ╔═╡ e842e61b-0f9f-49cc-a5a9-f8942cf6440e
md"""
**Remark.**
Beyond the thermosphere is the **exosphere**, which begins at ``h ∼ 500 \text{ km}`` and gradually merges with the interplanetary medium.
"""

# ╔═╡ be6290f2-a81a-4232-8c90-ea1110450db2
md"""
**Remark.**
The air within the troposphere circulates in the north--south direction because it is heated differentially.
"""

# ╔═╡ a5e3efb5-369c-4722-a135-5eb273e908eb
md"""
**Remark.**
However, on the rapidly rotating Earth, the circulation is modified by the Coriolis effect, which breaks up the circulating Hadley cells into a more complex pattern, as shown in Figure 9.6b.
"""

# ╔═╡ 0f4bac16-49cc-4098-b9dd-d225e86b18c1
md"""
**Remark.**
Astronomers have a particular interest in how the changeable atmosphere of the Earth affects observations of celestial objects.
The atmosphere absorbs, scatters, and refracts light from stars, and does so in a wavelength-dependent manner.
As mentioned in Section 6.6, the Earth's atmosphere absorbs many wavelengths of radiation, with some transparent or semitransparent "windows" in the near UV, visible, near IR, and radio portions of the spectrum (see Figure 6.17).
Even at wavelengths where the atmosphere is transparent, scattering of light can redirect photons, without necessarily changing their energy.
The cross-section for scattering depends on the ratio ``L / λ``, where ``L`` is the size of the scattering particle, and ``λ`` is the wavelength of light.

- ``L ≪ λ``.
  This case is known as **Rayleigh scattering**.

- ``L ∼ λ``.
  This case occurs when dust particles of size ``L ∼ 1 \;μ\text{m}`` scatter red and near infrared light.

- ``L ≫ λ``.
  This case occurs when water droplets with ``L ∼ 10 \;μ\text{m}``, of the sort found within clouds, scatter visible light.

The atmosphere also refracts light; for a celestial object observed close to the horizon (that is, at low altitude), the refraction can be significant and must be corrected for when determining the object's true position on the celestial sphere.
Since the refraction is wavelength dependent, the atmosphere will also disperse the light from objects at low altitude.
"""

# ╔═╡ d9b71bed-d860-47f1-b8d6-758e80213510
md"## 9.3 The Earth's Magnetosphere"

# ╔═╡ 4a53c62c-0b9b-4e49-b3bc-5481563d4580
md"""
**Remark.**
The Earth has a magnetic dipole field that is generated by convective motions within its molten outer core.
"""

# ╔═╡ b9c537a6-9367-4a71-9219-861963202ca8
md"""
**Remark.**
The Earth's magnetic field is strong enough to deflect the charged particles of solar wind.
"""

# ╔═╡ 8d387630-3eb1-4b2d-8f83-8009b5050e54
md"""
**Remark.**
The Earth's magnetic field can also channel charged particles into the Earth's atmosphere at high latitudes, where the magnetic field lines converge near the magnetic poles (see Figure 9.7).
"""

# ╔═╡ 869a1367-2c2f-4274-90bc-fad8cdeb6dba
md"## 9.4 The Moon's Interior and Surface"

# ╔═╡ 2da7b5e4-f165-4aa6-a2e3-6182ed4d6dfe
md"""
**Remark.**
The Earth's Moon has an average density of ``ρ = 3370 \text{ kg m}^{-3}``, about the same as the density of the Earth's crust.
"""

# ╔═╡ 85b66057-391f-43ea-bc5e-0e94b0624b8d
md"""
**Remark.**
Even to the naked eye, the Moon obviously has both darker and lighter regions, as shown in Figure 9.8.
"""

# ╔═╡ 5d2d3258-1915-4696-9d90-371ee513da8e
md"""
**Remark.**
The lunar highlands are an old surface, largely unchanged since the time of heavy bombardment with planetsimals.
"""

# ╔═╡ 5945d8e6-33be-49a7-852a-d8ec94d7080c
md"""
**Remark.**
The most obvious featuers on the surface of the Moon are **impact craters**: roughly circular depressions, shaped like shallow bowls with a distinct rim, that are the result of planetsimals and smaller debris hitting the Moon's surface.
"""

# ╔═╡ 998681d6-dbab-4ae1-9461-7574c9caa070
md"""
**Remark.**
Very large impacts can fracture the lunar crust to a great depth and allow subsequent flooding by molten rock from the mantle; this is how the maria were formed.
"""

# ╔═╡ c5eeaf37-a52c-4bfe-8284-69c070a8bbe1
md"""
**Remark.**
The six Apollo missions that successfully landed on the surface of the Moon returned a total of ``∼ 400 \text{ kg}`` of surface rocks from both maria and highlands.
After study, lunar rocks were discovered to differ from terrestrial rocks in several fundamental respects:

- All lunar rocks are igneous (solidified lava).

- Lunar rocks do not contain detectable amounts of water.

- The iron in lunar rocks is not oxidized.

- Lunar rocks are depleted in volatile elements.
"""

# ╔═╡ 976a6b1e-15f5-4f53-9db8-08541b00b2b1
md"""
**Remark.**
The Moon shows no evidence of large volcanos similar to those seen on the Earth, Venus, and Mars.
"""

# ╔═╡ 356ac202-0520-48b5-ac58-327e4535c265
md"""
**Remark.**
The entire lunar surface is covered with a layer of dust and rubble, most of it simply lunar crust that has been pulverized by impacts.
"""

# ╔═╡ bf93500c-98e7-40b9-b196-a1744e25e038
md"""
**Remark.**
We have said nothing about the Moon's atmosphere so far; this is because the Moon has virtually no atmosphere.
"""

# ╔═╡ 567128fc-e72a-4eb3-b3f8-5b4eb7be779d
md"## 9.5 The Origin of the Moon"

# ╔═╡ e3641159-2204-462e-9a13-4b53508a963d
md"""
**Remark.**
Astronomers have long wondered why the Earth has such an anomalously large satellite.
"""

# ╔═╡ d133c6be-ba17-463d-a65b-07e7ae80dad3
md"""
**Remark.**
The currently favored explanation for the formation of the Moon is the **giant impact** theory.
"""

# ╔═╡ b00eaa97-a3bb-4afb-97e5-480aa9fa6acc
md"# 10 The Planets"

# ╔═╡ 7d5b59e8-2067-455b-bfdf-9bf671bd201c
md"## 10.1 Terrestrial Planets"

# ╔═╡ ef05e2b8-81a0-4607-8478-1aaa8faeb1a8
md"""
**Remark.**
The terrestrial planets, in order of increasing distance from the Sun, are Mercury ``(a = 0.39 \text{ AU})``, Venus ``(0.72 \text{ AU})``, Earth ``(1.00 \text{ AU})``, and Mars ``(1.52 \text{ AU})``.
"""

# ╔═╡ 5cfb0e72-8f37-411e-a637-03fb6c4e7cf1
md"### 10.1.1 Mercury"

# ╔═╡ ea82ed13-ed3c-43d1-82bc-375765b14a44
md"""
**Remark.**
Mercury is difficult to observe from the Earth because it is never more than ``30^∘`` away from the Sun.
"""

# ╔═╡ 319b3ca1-88ed-4c89-a56e-db304366a538
md"""
**Remark.**
The angular speed with which an observer on Mercury sees the Sun move relative to the horizon is the same as the angular speed of Mercury's rotation as measured in a frame of refrence co-rotating with a line drawn from Mercury to the Sun.
"""

# ╔═╡ c69b791d-a7d3-4b56-92c7-133abdeae3f2
md"""
**Remark.**
The rotation period ``P_\text{rot}`` and orbital period ``P_\text{orb}`` of Mercury are **commensurate periods**; that is, their ratio is equal to the ratio of two small integers.
"""

# ╔═╡ 416a2823-f799-473a-a244-deeb93d22c98
md"""
**Remark.**
As shown in Figure 10.1, one or the other of the permanent bulges always points toward the Sun when Mercury is at perihelion.
"""

# ╔═╡ adc80eda-c72d-4117-9baa-62c35a8997ee
md"""
**Remark.**
The gravitational effects of the planet Mercury on the spacecraft *Mariner 10* and *MESSENGER* have allowed astronomers to compute the mass of Mercury accurately, despite the fact that it has no natural satellite.
"""

# ╔═╡ 9a2af99d-993e-44a3-a6cb-442589143685
md"""
**Remark.**
At first glance (see Color Figure 7), the surface of Mercury is similar to that of the Moon; the primary surface features are impact craters.
"""

# ╔═╡ 6e562ec6-8dde-4d28-8a8f-bb1c34eb3dc9
md"""
**Remark.**
Because of its high subsolar temperature and its low escape speed, Mercury has no permanent atmosphere.
"""

# ╔═╡ cde7d0a5-73db-4764-aebd-5415158e9c58
md"### 10.1.2 Venus"

# ╔═╡ 15e4c022-8fec-4239-b8f7-2324dbc6d25f
md"""
**Remark.**
With the obvious exception of the Moon, Venus is the most brilliant object that can be seen in the Earth's night sky.
"""

# ╔═╡ 33c5749f-6501-4aaa-a63c-37addc1c8932
md"""
**Remark.**
Because the orbital angular momentum and the rotational angular momentum of Venus are in opposite directions, the sidereal orbital period ``P_\text{rot}`` and the solar day ``P_\text{sol}`` are related by the equation (compare to eq. 1.3)

$\frac{1}{P_\text{rot}} = \frac{1}{P_\text{sol}} - \frac{1}{P_\text{orb}}, \tag{10.9}$

where ``P_\text{orb} = 225 \text{ days}`` is the orbital period of Venus.
"""

# ╔═╡ 35f86262-ed61-4b06-9e4f-779c9d19cc68
md"""
**Remark.**
The surface temperature of Venus is high: ``T ≈ 740 \text{ K}``, hot enough to melt tin, lead, and zinc.
"""

# ╔═╡ bbab833e-f038-4154-89b5-ff47f506bb90
md"""
**Remark.**
One intriguing question is why the atmospheres of Venus and the Earth are so different from each other.
"""

# ╔═╡ 17cc6c7b-a1b6-48eb-9cd0-4daf71eddcb5
md"""
**Remark.**
The Earth is unique among the terrestrial planets in having large quantities of liquid water.
"""

# ╔═╡ aa48d6e7-0067-406b-8e4f-00311169ccb3
md"""
**Remark.**
The clouds of Venus are transparent to radio waves; thus, the *Magellan* spacecraft was able to map the surface of Venus using radar.
"""

# ╔═╡ 38fbb892-9838-40a2-bed0-b68f16f568c7
md"""
**Remark.**
Venus has many volcanos, and extensive lava flows on its surface.
"""

# ╔═╡ 073ad3cb-31d8-4023-a0fc-21ef7174cd3a
md"""
**Remark.**
There is no evidence for plate tectonics on Venus; no rift zones or subduction zones, for instance.
"""

# ╔═╡ 3034153c-7623-4911-a589-1b0fb2384164
md"### 10.1.3 Mars"

# ╔═╡ 413e6f28-0476-4686-b9a2-0426a066b3e3
md"""
**Remark.**
To the naked eye, Mars (shown at higher resolution in Color Figure 7) has a perceptibly reddish color.
"""

# ╔═╡ b22e405e-aa48-403f-b2fd-9a62c1f26efb
md"""
**Remark.**
Mars has an orbit with ``a = 1.52 \text{ AU}``, and hence an orbital period ``P = 1.88 \text{ yr}``.
"""

# ╔═╡ e131acd9-159c-4874-a143-f1e3617b5213
md"""
**Remark.**
Although Mars has an escape speed comparable to that of Mercury, its daytime temperatures are much lower; thus, Mars has been able to retain an atmosphere.
"""

# ╔═╡ 66a685c5-384c-408a-bff7-6c94f6dbad07
md"""
**Remark.**
Geologically speaking, the two hemispheres of Mars (as illustrated in Figure 10.5) are very different from each other.
"""

# ╔═╡ 82be305d-b6b6-4c88-b796-1c7c81ef5183
md"""
**Remark.**
The *northern* hemisphere, which is relatively low in elevation, contains few craters and shows signs of recent volcanic activity (like the larger terrestrial planets, Earth and Venus).
"""

# ╔═╡ cc71bbdc-7a18-4699-bf3b-ad4353ba21c9
md"## 10.2 Jovian Planets"

# ╔═╡ 6847a380-d797-4bdb-b7cf-d03981481853
md"""
**Remark.**
The Jovian (Jupiter-like) planets, in order of increasing distance from the Sun, are Jupiter (``a`` = 5.2 AU), Saturn (9.6 AU), Uranus (19.2 AU), and Neptune (30.0 AU).
"""

# ╔═╡ d7ad2876-7a6c-418b-9eff-4394bd5f8820
md"### 10.2.1 Jupiter and Saturn"

# ╔═╡ 6d696c74-109f-4ec4-8f5e-7b67ec083d5f
md"""
**Remark.**
The Jovian planets, like the terrestrial planets, have interiors that are in hydrostatic equilibrium.
"""

# ╔═╡ 899cebe3-1173-4fec-8bf0-8a651ae1e48b
md"### 10.2.2 Satellites of Jupiter and Saturn"

# ╔═╡ d363bb82-9511-4f8d-a61c-2d0ae3cc28bb
md"""
**Remark.**
Jupiter and Saturn have many natural satellites.
"""

# ╔═╡ 6bb0c2db-70bb-4674-a547-cb6cd95d9ba9
md"### 10.2.3 Uranus and Neptune"

# ╔═╡ 21734572-d395-4916-af2c-fd31431acb2b
md"""
**Remark.**
Uranus and Neptune are twin planets, similar in their properties.
"""

# ╔═╡ 22bd8288-f9f3-4647-8387-69c85ed38f05
md"## 10.3 Planetary Rings"

# ╔═╡ a64a0feb-fba2-480f-95a4-cffe993737db
md"""
**Remark.**
All of the Jovian planets have **planetary rings** in their equatorial planes.
"""

# ╔═╡ be7caae4-30a6-4a80-ac9c-e65b6e918963
md"# 11 Small Bodies in the Solar System"

# ╔═╡ dbacc313-84f1-4d20-9602-967e3d23a78c
md"""
**Remark.**
Thus far, we have discussed the largest bodies in the solar system (those with ``M > 0.003M_⊕``).
"""

# ╔═╡ ec00c2fe-1528-421e-aa86-0a0c3c78b3ad
md"## 11.1 Asteroids"

# ╔═╡ ec3a073c-b95a-44e4-bb34-1b4b0e52d478
md"""
**Remark.**
Asteroids were originally discovered as a result of a search for a suspected "missing planet."
"""

# ╔═╡ 6e46b238-6ff0-4320-9987-b218aa1c84df
md"## 11.2 Trans-Neptunian Objects"

# ╔═╡ 891fe138-8d79-44c2-9975-26c0d1ef1509
md"""
**Remark.**
A trans-Neptunian object, or TNO, can be broadly defined as any object orbiting the Sun on an orbit larger than that of Neptune ``(a > 30.1 \text{ AU})``.
"""

# ╔═╡ c2e3e3e9-b9d4-41d3-8e2b-eb04ba0338a5
md"## 11.3 Comets"

# ╔═╡ 0d3aa5ee-3b45-4f1d-80a5-c797fdbf7101
md"""
**Remark.**
When we observe the asteroid belt, we can directly detect asteroids down to a size limit ``d ∼ 1 \text{ km}``.
"""

# ╔═╡ d0be16dd-bd06-44a0-9a33-aca08b240938
md"## 11.4 Meteoroids and Dust"

# ╔═╡ 15a63e4b-67b1-4e53-8048-51967b1a56b9
md"""
**Remark.**
In the standard scenario for the formation of the solar system, as outlined in Section 8.3, small, solid particles condensed from the pre-solar nebula.
"""

# ╔═╡ cc432a74-fb24-4470-9a18-efd14971d413
md"# 12 The Solar System in Perspective"

# ╔═╡ 78162b46-581f-40b3-8a28-e1b80a5555f0
md"""
**Remark.**
Our aim in studying planets in the solar system (aside from the intrinsic thrill of exploring new worlds) is to understand how the solar system was formed and how it has evolved with time.
"""

# ╔═╡ 0ea4a8d1-fecd-4679-adcb-a38b295527f1
md"## 12.1 Comparative Planetology Within the Solar System"

# ╔═╡ 181c079b-391d-4857-99be-3f9af25e8cf9
md"""
**Remark.**
Comparative planetology, as practiced in the preceding chapters, has a number of lessons to teach us.
"""

# ╔═╡ 6cfcea02-a286-42bf-968e-78f7690c430a
md"""
**Remark.**
**Lesson 1: Surfaces of planets are shaped by competing internal mechanisms and external mechanisms.**
"""

# ╔═╡ 88abdf77-c65f-4fa6-9963-bc2d91c1595a
md"""
**Remark.**
**Lesson 2: More massive, colder planets are better able to retain atmospheres.**
"""

# ╔═╡ 15559296-f339-46a5-8602-fcf7445930b0
md"""
**Remark.**
**Lesson 3: Giant satellites of Jovian planets show patterns consistent with our ideas about formation of the planets.**
"""

# ╔═╡ a7fcf2fc-f00c-4ec1-9729-6c764ef8f5c6
md"""
**Remark.**
**Lesson 4: Many unusual features of the solar system can be attributed to giant impacts.**
"""

# ╔═╡ 4a0a68cf-b5c6-43f0-8434-9d0dc21a72fe
md"## 12.2 Origin of the Solar System"

# ╔═╡ 7dcc3561-41f8-4317-b37e-c1ed5d58a4f8
md"""
**Remark.**
Our understanding of the history and evolution of the solar system is still incomplete, but a comprehensive, self-consistent picture has begun to emerge.
"""

# ╔═╡ 0238d3ef-979f-466b-9af3-3dca9da0165c
md"""
**Remark.**
If we refer back to the list of questions at the end of Section 8.1, about the differences between terrestrial and Jovian planets, we can provide plausible answers to all of them.
"""

# ╔═╡ 73a1769a-ee74-44bc-bc87-abed5ea99dc3
md"## 12.3 Detecting Exoplanets"

# ╔═╡ b2628a11-0a9b-4c18-85cf-1891cfc911de
md"""
**Remark.**
Although astronomers have developed a broad outline of how the solar system formed, details are still lacking.
"""

# ╔═╡ 8633016f-d215-4f68-8bbb-d4a0b0c7cc6e
md"""
**Remark.**
Detecting planets around other stars is far more difficult than detecting planets orbiting the Sun.
"""

# ╔═╡ 22f81c97-b71a-45d8-a546-bdd54ea788aa
md"""
**Remark.**
At visible wavelengths, Jupiter's luminosity is due to reflected sunlight.
"""

# ╔═╡ 600776b7-2383-4bf1-b1e4-34b8698a8b9f
md"""
**Remark.**
One way we can increase the apparent brightness of Jupiter relative to the Sun is to look for the thermal emission from Jupiter at photon energies ``hν ≤ kT_\text{Jup}``.
"""

# ╔═╡ 7a64eaaa-d455-492d-a6bf-50a2d7857de4
md"""
**Remark.**
Because direct imaging of exoplanets is difficult, planet searches have so far concentrated on indirect methods of finding exoplanets.
"""

# ╔═╡ 7bbf8c10-2cc1-4625-bba5-bbd174f5d09f
md"""
**Remark.**
To revert to our example of the Jupiter--Sun system, the mass of Jupiter is ``M_\text{B} ≈ 10^{-3} M_\text{A}``, where ``M_\text{A} = 1 M_⊙``.
"""

# ╔═╡ d11e79e6-c5a8-41ce-ac81-7a3d56cb67fd
md"""
**Remark.**
As we computed above, the semimajor axis of Jupiter's orbit subtends an angle of 4 arcseconds as seen from the distance of Proxima Centauri; this implies that the semimajor axis of the Sun's orbit will subtend an angle of only 4 milliarcseconds.
"""

# ╔═╡ 2a0f5990-ea47-439c-b858-8bf09b6465f7
md"""
**Remark.**
If we were in the vicinity of Proxima Centauri, discovering Jupiter by **direct imaging** (that is, taking a "snapshot" of Jupiter) or by **astrometry** (that is, watching the Sun trace out a small ellipse) we would face difference technical difficulties.
"""

# ╔═╡ 8512a7c2-498b-49ef-adfb-b426f55060d9
md"""
**Remark.**
Because of the difficults involved in direct imaging and astrometry, most exoplanets discovered to date have been found using other techniques.
One such technique is the **radial velocity** method.
If the orbital velocity of a star, caused by an unseen exoplanet, has a component ``v_r`` along the line of sight to an observer, it will cause a Doppler shift

$\frac{\Delta λ}{λ} = \frac{v_r}{c} \tag{12.10}$

in the absorption lines of the star's spectrum.
Consider the simple case of a star, with mass
"""

# ╔═╡ 6b053e8f-9c99-4f3d-a88c-3b3697024e2d
md"## 12.4 Properties of Exoplanets"

# ╔═╡ 0dec3df7-9732-4b5e-bece-3eac82023b76
md"""
**Remark.**
Recent searches for exoplanets have contributed greatly to our knowledge of planetary properties.
"""

# ╔═╡ 4be2ef34-97e5-4b69-8e78-0ad229cd38f9
md"""
**Remark.**
One of the most startling results of exoplanet searches is the astronomical equivalent of find a living-room hippo; searches have revealed a significant population of **hot Jupiters**, where a hot Jupiter is a planet with a mass comparable to that of Jupiter, on an orbit with ``a ≲ 0.1 \text{ AU}``.
"""

# ╔═╡ b6c85d14-ee2f-4537-856d-0f8663536039
md"""
**Remark.**
Figure 12.9a shows ``M_B \sin{i}`` as a function of semimajor axis length ``a`` for exoplanets detected with the radial velocity technique.
"""

# ╔═╡ f95b2462-d25f-4e9c-a6ad-2a40fffd0fd0
md"""
**Remark.**
In the previous section, we discussed, for the sake of simplicity, the case of exoplanets on nearly circular orbits.
"""

# ╔═╡ 66d6c18d-4a8a-4665-a101-2f9a94fe731f
md"""
**Remark.**
The search for exoplanets has thus provided some surprising results.
"""

# ╔═╡ abcfa7bd-b484-40e7-91b2-87d02ef04099
md"""
**Remark.**
Future exoplanet surveys will increase our knowledge about planets on larger orbits, and about planets of lower mass.
"""

# ╔═╡ 78dd01d6-07f9-4b7f-9940-bcfb1facec73
md"# 13 Properties of Stars"

# ╔═╡ d9e7e1cb-e42d-437c-87b2-a3db4b6614e7
md"""
**Remark.**
Although astronomers study a wide range of objects, from dust grains to superclusters of galaxies, the study of *stars*, and the laws dictating their behavior, is a key part of astronomy.
"""

# ╔═╡ 7c7cd7df-10d9-44b7-b7fe-686c868a61a6
md"## 13.1 How Far Is a Star?"

# ╔═╡ 053e4f8d-7975-4924-9306-89d4ad2e336d
md"""
**Remark.**
Astronomers have developed many methods of estimating distances to stars and other celestial objects.
Within the solar system, the distances between planets can be accurately measured using **radar**.
"""

# ╔═╡ e03268ec-942e-4855-aa50-c84a6a049c36
md"""
**Remark.**
Thanks to careful radar measurements, distances within the solar system are known with great accuracy.
"""

# ╔═╡ 703e559f-5dd4-4797-af2a-ef3d5ee95f82
md"""
**Remark.**
A useful tool in the astronomer's kit for measuring the distance to nearby stars is **stellar parallax**.
"""

# ╔═╡ 6850ae2c-7009-4b76-a8b7-5394e2a6780d
md"""
**Remark.**
Since we know the length of the astronomical unit very well, the accuracy with which we know the distances to nearby stars is determined by the accuracy with which we can measure ``π''``.
The astronomical unit is an inconveniently small unit for measuring stellar distances.
Thus, astronomers tend to measure stellar distances in **parsecs**, where

$d = \frac{1 \text{ parsec}}{π''[\text{arcsec}]}. \tag{13.3}$

Thus, the parsec (abbreviated pc) is the distance at which a star has a parallax angle ``π''`` equal to one arcsecond.
In metric units, ``1 \text{ pc} = 3.086 × 10^{16} \text{ m}``.
"""

# ╔═╡ 899e208d-a586-4d81-832c-9e03e644df60
md"""
**Remark.**
The angle ``π''``, even for the Sun's nearest neighbors among the stars, is less than one arcsecond.
"""

# ╔═╡ d2ba656a-5705-4bbc-b79b-8b29ea4cfc61
md"""
**Remark.**
The Sun's nearest neighbors are the three stars of the Alpha Centauri (``α`` Cen) system.
The nearest of the three is Alpha Centauri C, also known, from its proximity to us, as **Proxima Centauri**.
"""

# ╔═╡ cb7b8c30-92c4-4a50-97e7-e7ecc157eb1f
md"""
**Remark.**
Even with the accurate angular measurements provided by *Hipparcos*, stellar parallax is useful only for stars within 200 parsecs of us.
"""

# ╔═╡ 10315c53-fbdd-4c9d-98f8-06a796248a5d
md"## 13.2 How Bright Is a Star?"

# ╔═╡ 413550be-6d46-4545-a174-bc6aeaed4122
md"""
**Remark.**
In casual conversation, the word "brightness" is often used loosely.
In astronomy, it is useful to distinguish between **intrinsic brightness** and **apparent brightness**.
The intrinsic brightness of a star is a measure of how much light the star emits in a given time.
The apparent brightness of a star is a measure of how much starlight per unit area enters our pupils (or the aperture of our telescope) in a given time.
"""

# ╔═╡ 45e754bb-50ba-4cf9-8c9d-eeae6c0ae72d
md"""
**Remark.**
The **intrinsic brightness** of a star is also known as its **luminosity** ``L``.
The luminosity of a star is the rate at which it emits energy in the form of electromagnetic radiation.
"""

# ╔═╡ dc5b66a5-3dff-4c62-89f9-746a48d79c0e
md"""
**Remark.**
The **apparent brightness** of a star is also known as its **flux** ``F``.
The flux of a star is the rate per unit area at which its energy strikes a surface held perpendicular to the star's rays.
"""

# ╔═╡ 015ae6d4-f72f-4be5-8f94-8af5fad0eee0
md"""
**Remark.**
In equation (13.8), we computed the Sun's flux, given its luminosity and distance.
In practice, astronomers more commonly work in the other direction: after measuring the flux and distance of a star, they compute its luminosity.
"""

# ╔═╡ e2bd1e02-1399-46fa-bb14-f3c53d9a34e2
md"""
**Remark.**
Measuring the total flux of a star, integrated over all wavelengths of light, is a difficult task.
"""

# ╔═╡ e5a4b813-4990-4d0c-a2ba-7e13d92e8980
md"""
**Remark.**
The first recorded attempt to quantify stellar flux at visible wavelengths was made by the Greek astronomer Hipparchus in the second century BC.
After noting that stars differed in their apparent brightness, he classified them in six categories.
The stars with the greatest flux were stars of the 1st magnitude.
The stars with the next highest flux were stars of the 2nd magnitude, and so on down to stars of the 6th magnitude, which are the faintest stars visible to the human eye.
After the invention of the telescope, the **apparent magnitude** scheme of Hipparchus was extended to fainter stars (7th magnitude, 8th magnitude, and so forth).
"""

# ╔═╡ 5e0b5c90-70b7-4e5b-91a7-64a557adf894
md"""
**Remark.**
The apparent magnitude system was placed on a firm mathematical basis by Norman Pogson in the mid-nineteenth century, when he realized that a difference of 5 magnitudes represents a multiplicative factor of 100 in flux.
"""

# ╔═╡ df4dba86-34f2-4c23-99d5-0e21b3a6c740
md"""
**Remark.**
The apparent magnitude ``m`` can be thought of as a logarithmic measure of the flux, with

$m = C - 2.5 \log{F}. \tag{13.16}$
"""

# ╔═╡ 1e204fb2-dbc2-4924-91ff-592bd4e981ca
md"""
**Remark.**
Since a star's flux depends on both luminosity and distance, so does the star's apparent magnitude.
"""

# ╔═╡ d3b350aa-89b8-404a-89a9-a3ce7e39e828
md"## 13.3 How Hot Is a Star?"

# ╔═╡ 8dc4bd72-648b-4bb3-951f-82a148b95208
md"""
**Remark.**
Stars are not monochromatic; they emit light with a wide range of wavelengths.
"""

# ╔═╡ 25682b08-fdc9-4714-b974-7e28e9a365a3
md"## 13.4 How Big Is a Star?"

# ╔═╡ 3b02e55f-d467-4539-aed1-9020bf4f4217
md"""
**Remark.**
If you know the distance ``d`` to a star, and its angular diameter ``α``, then its radius ``R`` can be determined by a simple bit of trigonometry:

$\frac{R}{d} = \tan{\left(\frac{α}{2}\right)}. \tag{13.41}$
"""

# ╔═╡ e119c4d4-6edb-42dd-a0ff-e9023d17df04
md"## 13.5 How Massive Is a Star?"

# ╔═╡ a98b21e9-83c5-498a-88c2-2f8f23899255
md"""
**Remark.**
The mass of a star can be determined using Kepler's third law, as modified by Isaac Newton (Section 3.1.3):

$M_A + M_B = \frac{4π^2}{G} \frac{a^3}{P^2}, \tag{13.53}$

where ``M_A`` and ``M_B`` are the masses of two objects orbiting their mutual center of mass, ``P`` is their orbital period, and ``a`` is the semimajor axis of their relative orbit.
"""

# ╔═╡ cdf148cb-27a1-459a-8ec5-0562e1261bb5
md"""
**Remark.**
Binary stellar systems are usually classified by the way in which they are detected.
There are three main classes.

- **Visual binary.**

- **Spectroscopic binary.**

- **Eclipsing binary.**
"""

# ╔═╡ 09217adb-d840-4e1a-8dae-8f39cdfc9fe8
md"### 13.5.1 Visual Binaries"

# ╔═╡ 7ca0a44b-89c4-4906-ba69-40cd032a1cf6
md"""
**Remark.**
An example of a visual binary is the Sirius system.
"""

# ╔═╡ c7cadb84-4683-460a-9533-38e61f402c62
md"### 13.5.2 Spectroscopic Binaries"

# ╔═╡ 44977dcd-4e2a-460c-9b90-bd98b32decbd
md"""
**Remark.**
Spectroscopic binaries are detected by variability in the Doppler shift of one or both stars in the binary system.
"""

# ╔═╡ d5a95774-5b64-4f2d-a494-a310b5275baa
md"### 13.5.3 Eclipsing Binaries"

# ╔═╡ 1b0739a8-fcf2-4d5f-bac1-1320cef68f81
md"""
**Remark.**
Eclipsing binaries are detected as **variable stars**, whose brightness changes with time.
"""

# ╔═╡ dc13952e-0581-40b4-87e2-509b353bcf91
md"## 13.6 How are Mass, Radius, and Luminosity Related?"

# ╔═╡ 5a2cc1a5-c61b-4cc2-9c19-d2ae6f4fc363
md"""
**Remark.**
If we plot radius ``R`` versus mass ``M`` for stars whose mass we know (Figure 13.10), we find that most stars lie along a fairly well-defined mass-radius relation.
"""

# ╔═╡ e01aada2-9ea0-4207-9a7d-bb4139d36b25
md"# 14 Stellar Atmospheres"

# ╔═╡ 907eb579-d791-46a1-af82-e1b8f6f7dc1b
md"""
**Remark.**
Most of what we know about stars other than the Sun comes from gathering photons that the stars emit.
The problem with photons is that they tell us only what is happening in the *photosphere*, the relatively thin layer of a star from which the photons escape.
When we compute the "radius of a star," for instance, we are really computing the radius of the star's photosphere.
When astronomers talk about the "temperature of a star," they mean the temperature of the star's photosphere, unless they explicitly state otherwise.
"""

# ╔═╡ f550854b-0d35-40fb-b229-7d6f719b19c7
md"## 14.1 Hydrostatic Equilibrium"

# ╔═╡ fe3d7cae-5adf-4593-a3a3-741cf5294cdb
md"""
**Remark.**
To understand how a star's spectrum is produced, we must understand the basic physics of stellar atmospheres.
In some ways, the atmosphere of a star is like the Earth's atmosphere; despite winds and storms, both types of atmosphere are in **hydrostatic equilibrium**, as described in Section 9.2.
In other ways, a star's atmosphere is unlike the Earth's.
For one thing, the Earth's atmosphere rests upon a solid or liquid surface; since stars are completely gaseous, you can think of them as being nothing but atmosphere.
Another difference between stellar atmospheres and the Earth's atmosphere is that the atmospheres of stars are relatively hot, and ionization becomes important.
"""

# ╔═╡ 252ff3de-f97e-4445-be35-000187feeb2d
md"## 14.2 Spectral Classification"

# ╔═╡ b4f33ac4-b8e9-4ca0-a016-a0e10282b0fd
md"""
**Remark.**
A star's spectrum contains information about the photosphere's chemical composition and temperature.
"""

# ╔═╡ 4a14863a-95c5-4a3a-8ff4-bcb25aaf928d
md"""
**Remark.**
The strength of absorption lines, as measured by their equivalent width ``W``, depends on the temperature of the photosphere.
"""

# ╔═╡ a51dc84d-b59c-4d50-9ed8-c691e9a64e2e
md"""
**Remark.**
The Balmer lines can be used to estimate the temperature of a star; the stars with the strongest Balmer lines are those with ``T ≈ 10{,}000 \text{ K}``.
"""

# ╔═╡ 7340eed1-d1aa-4c9f-80f1-76270f766629
md"""
**Remark.**
We can distinguish between the high-temperature case and the low-temperature case by looking at the absorption lines of elements other than hydrogen.
"""

# ╔═╡ 08fcc886-3169-4334-9bff-6012428b43a6
md"## 14.3 Luminosity Classes"

# ╔═╡ ae0e00a3-a323-4b13-ad17-53ab4ec7a8de
md"""
**Remark.**
The spectral types O through T are a temperature sequence.
"""

# ╔═╡ 640f345a-7ef9-4f2e-8061-b4b75ffbee98
md"## 14.4 Hertzsprung-Russell Diagrams"

# ╔═╡ 3e65598e-b338-4dfc-8924-3c7effecce57
md"""
**Remark.**
In the early twentieth century, when the OBAFGKM spectral classification system was being sorted out, it occurred independently to a pair of astronomers that it might be interesting to plot the absolute visual magnitude of stars versus their spectral type.
"""

# ╔═╡ c2cba999-caf4-454a-a8c3-d04191c37b07
md"# 15 Stellar Interiors"

# ╔═╡ 228edbd3-e83b-4a5f-877e-447fadd0d1dd
md"""
**Remark.**
Our observations of stars are only skin-deep.
The mass of the Sun's photosphere, chromosphere, and corona (the portions of the Sun we can see directly) is only ``10^{-10}`` of the Sun's total mass.
We are not entirely ignorant of the 99.99999999% of the Sun that is opaque, however.
Because the structure of the Sun, and other stars, is dictated by well-understood laws of physics, we can make mathematical models of stellar interiors, using the observed surface properties of stars as our boundary conditions.
"""

# ╔═╡ 1b9875da-a805-466d-8761-d12f933df486
md"## 15.1 Equations of Stellar Structure"

# ╔═╡ 9d21dccf-7529-4586-a35a-cbcb3e0da6d8
md"""
**Remark.**
The internal structure of a spherical star in equilibrium is dictated by a few basic **equations of stellar structure**.
The first equation of stellar structure is the familiar **equation of hydrostatic equilibrium** (eq. 9.8):

$\frac{dP}{dr} = -\frac{GM(r) ρ(r)}{r^2}. \tag{15.1}$

Make note of the assumptions that have gone into this equation: the star is spherical and nonrotating; the star is neither expanding nor contracting; and gravity and pressure gradients provide the only forces.
Equation (15.1) is a single equation with three unknowns--``P(r)``, ``M(r)``, and ``ρ(r)``--so even with known boundary conditions, we can't solve it to find a unique solution for the pressure and density inside the star.
However, we can still extract interesting information from the equation of hydrostatic equilibrium.
For instance, we can make a very crude estimate of the central pressure of the Sun.
"""

# ╔═╡ b4e72e68-4c9f-4ee9-beb4-2672a6adb7c0
md"""
**Remark.**
A rough approximation to the equation of hydrostatic equilibrum is

$\frac{\Delta P}{\Delta r} ≈ -\frac{G⟨M⟩⟨ρ⟩}{⟨r⟩^2}, \tag{15.2}$

where ``\Delta P`` is the difference in pressure between the Sun's photosphere and its center; ``\Delta r`` is the difference in radius between the Sun's photosphere and its center; and ``⟨M⟩``, ``⟨ρ⟩``, and ``⟨r⟩`` are typical values of mass, density, and radius in the Sun's interior.
As a rough guess, we can set ``⟨ρ⟩ ≈ ρ_⊙ ≈ 1400 \text{ kg m}^{-3}``, the average density of the Sun.
We can also guess that ``⟨M⟩ ≈ M_⊙ / 2 ≈ 1.0 × 10^{30} \text{ kg}`` and ``⟨r⟩ ≈ R_⊙ / 2 ≈ 3.5 × 10^8 \text{ m}``.
The pressure at the photosphere will be much less than the central pressure, so we can rewrite equation (15.2) as

$\frac{0 - P_c}{R_⊙ - 0} ≈ -\frac{G(M_⊙ / 2) ρ_⊙}{(R_⊙ / 2)^2} ≈ -\frac{2GM_⊙ ρ_⊙}{R_⊙^2}, \tag{15.3}$

implying a central pressure

$P_c ≈ 2 \frac{GM_⊙ ρ_⊙}{R_⊙} ≈ \frac{8π}{3} Gρ_⊙^2 R_⊙^2. \tag{15.4}$
"""

# ╔═╡ e8f09060-4e8f-4d62-b0c2-998b5fdb27ff
md"""
**Remark.**
For comparison, in Section 10.2.1, we computed the central pressure for a planet of uniform density.
With the uniform-density assumption, we computed a central pressure (given in equation 10.18) that was smaller by a factor of 4 than that given in equation (15.4).
From this discrepancy, we learn that although the relation ``P_c ∼ GM_ρ / R`` should hold true for any sphere in hydrostatic equilibrium, we should regard our computed values of ``P_c`` as order-of-magnitude approximations, unless we know the exact density profile ``ρ(r)``.
"""

# ╔═╡ 655862ee-d260-4d12-8103-5a9f3c612018
md"""
**Remark.**
With the numerical values of ``M_⊙``, ``ρ_⊙``, and ``R_⊙`` inserted into equation (15.4), we find that

$P_c ≈ 2 \frac{GM_⊙ρ_⊙}{R_⊙} ≈ 5 × 10^{14} \text{ N m}^{-2} ≈ 5 × 10^9 \text{ atm}. \tag{15.5}$

When we compare this is to the pressure ``P_\text{phot} ≈ 10^{-3} \text{ atm}`` in the Sun's photosphere, as computed in Section 14.3, we see that the center of a star is a high-pressure place.
"""

# ╔═╡ 5fe6f6ca-d15c-4dfb-b94a-b0a1e71abd28
md"""
**Remark.**
The second equation of stellar structure is the **equation of mass continuity**:

$\frac{dM}{dr} = 4πr^2 ρ(r). \tag{15.6}$

This simply tells us that the total mass of a spherical star is the sum of the masses of the infinitesimally thin spherical shells of which it is made.
It tells us the relation between ``M(r)``, the mass enclosed within a radius ``r``, and ``ρ(r)``, the local mass density at ``r``.
Combining equations (15.1) and (15.6) gives us two equations in the three unknowns ``P(r)``, ``M(r)``, and ``ρ(r)``.
We need further informtaion before we can compute unique solutions for ``P``, ``M``, and ``ρ``.
"""

# ╔═╡ 7ceb1e73-7748-4f1e-9d99-55864079ef32
md"""
**Remark.**
Of course, we do have another equation that relates ``P`` to ``ρ``: the **equation of state**, which tells the relation among density, temperature, and pressure for a gas.
For most stars, the appropriate equation of state is the ideal gas law:

$P(r) = \frac{ρ(r) kT(r)}{μm_p}. \tag{15.7}$

Strictly speaking, we should also include the radiation pressure exerted by the photons,

$P_\text{rad}(r) = \frac{a}{3} T(r)^4, \tag{15.8}$

where ``a = 4σ_{\text{SB}} / c = 7.56 × 10^{-16} \text{ J m}^{-3} \text{ K}^{-4}`` is the radiation constant.
However, for all but the hottest stars, the radiation pressure is negligibly tiny compared to the gas pressure.
Generally, the mean molecular mass ``μ`` in equation (15.7) is a function of ``r``, since the chemical composition and ionization state change with radius inside a star.
"""

# ╔═╡ 03e19a6c-9fc7-4fb7-b818-c4cf3ec0bafa
md"""
**Remark.**
Most of the Sun is completely ionized, and the chemical composition is nearly constant outside the central regions where hydrogen is fused to helium; thus, for most of the Sun's radius, the mean molecular mass is ``μ ≈ 0.6`` (see Section 14.1).
If we approximate the mean molecular mass as being constant in a star, we now have three equations in four unknowns, ``T``, ``P``, ``M``, and ``ρ``.
Although this is insufficient for a complete solution within the solar interior, we can make a crude estimate of the central temperature of the Sun, using the ideal gas law as the equation of state:

$T_c ≈ P_c \frac{μ_⊙ m_p}{ρ_⊙ k} ≈ \frac{2GM_⊙ μ_⊙ m_p}{R_⊙ k}. \tag{15.9}$

With ``μ_⊙ = 0.60``, this yields

$T_c ≈ 3 × 10^7 \text{ K}. \tag{15.10}$

Careful computer models of the Sun's interior yield a central temperature ``T_c = 1.47 \times 10^7``, so our guesstimate is off by a factor of 2.
Note that we are able to guess the central temperature of the Sun without knowing *anything* about how energy is generated in the Sun.
The central temperature of a star of mass ``M`` and radius ``R`` is dictated by the fact that it is a sphere made of ideal gas in hydrostatic equilibrium.
We have used the central temperature of the Sun as our example, but note that

$T_c ∝ \frac{Mμ}{R} \tag{15.11}$

for any sphere of ideal gas in hydrostatic equilibrium.
In Section 13.6, we found that main sequence stars with ``M < 1.66M_⊙`` have ``R ∝ M``, approximately.
Since all main sequence stars have similar mean molecular masses ``(μ ∼ 1)``, this implies that low-mass main sequence stars have

$T_c ∝ \frac{M}{R} ≈ \text{constant}. \tag{15.12}$

Thus, all main sequence stars with ``M < 1.66M_⊙`` should have central temperatures close to that of the Sun.
"""

# ╔═╡ b70f5bdf-fcb1-4cb3-aaac-d6b03c138c1e
md"### 15.1.1 Energy Transport in Stars"

# ╔═╡ c074bc42-b7f1-4749-9e44-c36b55fad72d
md"""
**Remark.**
One of the defining characteristics of stars (and one that's been ignored so far in this chapter) is that they glow in the dark.
A basic question about stars--one so simple that a child might ask it--is Why do stars shine?
The basic answer to that question is Stars shine because they are hot.
If you place a hot, bright object in the middle of a cool, dark space, then energy, in the form of photons, will flow away from the hot object.
Not only do stars shine because they are hot, but within the star, energy flows from the very hot center (``T_c ≈ 14{,}700{,}000 \text{ K}`` for the Sun) to the not-so-hot photosphere (``T_\text{phot} ≈ 5800 \text{ K}`` for the Sun).
The rate at which thermal energy flows outward is dictated by the next equation of stellar structure, the **equation of energy transport**.
"""

# ╔═╡ df34fd79-2db4-49ac-a2a7-634c489753f1
md"""
**Remark.**
Thermal energy can be transported by one of three methods: radiation, convection, and conduction.
**Radiative** energy transport occurs when energy is carried from one location to another by photons.
Radiation tends to be the dominant form of energy transport in transparent media.
**Convective** energy transport occurs when thermal energy is carried by the bulk motion of hot fluids.
Convection is thus the dominant form of energy transport in relatively opaque liquids and gases.
**Conductive** energy transport occurs when the random thermal motion of atoms or molecules causes them to collide with adjacent atoms or molecules, with a resulting transfer of kinetic energy.
Conduction is the dominant form of energy transport in relatively opaque solids and thus can be disregarded in gaseous stars.
Within a star, energy can be transported from the center to the photosphere either by convection (hot blobs of gas move upward, while cooler blobs sink downward to take their place) or by radiation.
In the Sun, it happens that over most of the distance from the core to the photosphere, the energy is transported by photons. Thus, we’ll look first at radiative energy transport.
"""

# ╔═╡ 0446d34d-5a9d-420d-820f-1a50d3f1fa21
md"### 15.1.2 Radiative Transport"

# ╔═╡ cde173f0-56f1-40fc-aeda-788e1b41478a
md"""
**Remark.**
Consider a thin spherical shell centered on a star's center.
The inner radius of the shell is ``r``; the outer radius is ``r + dr``, with ``dr ≪ r``.
The temperature at the inner surface of the shell is ``T``; the temperature at the outer surface is ``T + dT``, where ``|dT| ≪ T``.
Typically, stars have ``dT < 0``, meaning that the temperature drops as you move away from the center.
The radiation pressure at the inner surface of the shell is

$P_\text{rad}(r) = \frac{a}{3} T^4, \tag{15.13}$

while the radiation pressure at the outer surface is

$P_\text{rad}(r + dr) = \frac{a}{3}[T + dT]^4 = \frac{a}{3} T^4 \left[1 + \frac{dT}{T}\right]^4 ≈ \frac{a}{3} T^4\left[1 + 4\frac{dT}{T}\right] \tag{15.14}$

where in the last step we have used a first-order expansion, assuming that ``|dT/T| ≪ 1``.
The net radiation force acting on the shell will be the pressure difference between the inside and outside, multiplied by the shell's area:

$\begin{align*}
F_\text{rad} &= [P_\text{rad}(r) - P_\text{rad}(r + dr)] 4πr^2 \tag{15.15} \\
&≈ -\frac{a}{3} 4T^4 \frac{dT}{T} 4πr^2 = -\frac{16π}{3} ar^2 T^3 dT. \tag{15.16}
\end{align*}$

Thus, a temperature gradient across a thin shell is accompanied by a net radiation force, caused by photons shoving on the material inside the shell.
We've already seen that the optical depth of a thin spherical shell is (equation 14.21)

$dτ = -ρ(r) κ(r) dr, \tag{15.17}$

where ``κ`` is the opacity, in units of ``\text{m}^2 \text{ kg}^{-1}``.
If ``dτ ≪ 1``, the probability that a photon will be absorbed while cross the shell is ``dP ≈ dτ``.
The total rate at which photons carry energy through the shell is just the luminosity, ``L(r)``.
Since a photon has a momentum ``p = E/c``, where ``E`` is the photon energy, the rate at which photons carry momentum through the shell is ``L(r) / c``.
Thus, the rate at which photon momentum is transferred to the shell (in other words, the *force* on the shell) iss

$F_\text{rad}(r) = \frac{L(r)}{c} dτ = -\frac{L(r)}{c} ρ(r) κ(r) dr. \tag{15.18}$
"""

# ╔═╡ 4ea0e7b1-3962-45fb-b862-37af6da7db32
md"### 15.1.3 Convective Transport"

# ╔═╡ 1bb57cb7-1da0-40d7-8ff9-3ab3ae04a790
md"""
**Remark.**
Suppose, as a though experiment, you inserted a layer into the Sun that was perfectly opaque, with ``κ = ∞``.
"""

# ╔═╡ b99e3a13-f528-4a5d-8bbe-abb1d74f6763
md"""
**Remark.**
Convection is a chaotic, turbulent process, as you can verify by watching a pot of simmering soup on a stove, so the detailed physics tends to be messy.
"""

# ╔═╡ b7f71696-419f-4b1a-8c92-c3aaf5baf059
md"""
**Remark.**
Consider a small blob of gas in a star, as shown in Figure 15.1.
"""

# ╔═╡ 6299b42b-7986-4b24-a370-8f10a90af128
md"""
**Remark.**
If the blob is moved upward rapidly, it will not have time to exchange heat with its surroundings.
"""

# ╔═╡ 4c06cb94-23e7-404d-b1ba-ba4562d57468
md"""
**Remark.**
It is often more useful to state the stability criterion in terms of the temperature gradient ``dT/dr`` of a star, rather than its density gradient ``dρ/dr``.
"""

# ╔═╡ 13e47555-a434-4f8d-a6d9-c9fc75571016
md"""
**Remark.**
In general, energy is carried outward in a star either by radiation or by convection, whichever is more efficient at shuttling joules toward the photosphere.
"""

# ╔═╡ 67a85173-1225-41dd-88ce-c7e57de0eab1
md"## 15.2 Energy Generation in Stars"

# ╔═╡ 2f1b2d78-f6c3-44b6-a81e-d732522009fa
md"""
**Remark.**
So far, we've talked about how energy is carried to the photosphere of the star, but not about how it is generated in the star's interior.
The energy that a star tosses away into space must come from some source inside the star.
The generation of energy within a star is described by the last of the equations of stellar structure, the **equation of energy generation**.
Consider the usual thin spherical shell of inner radius ``r`` and outer radius ``r + dr``, centered on the star's center.
A luminosity ``L`` flows outward through the inner surface, and a luminosity ``L + dL`` flows outward through the outer surface.
Where does the extra bit of power ``dL`` come from?
Even if we don't know from a physics standpoint, we can still express it mathematically in terms of the rate of energy production ``ϵ`` (the units of ``ϵ`` are watts per kilogram).
The equation of energy generation can be written as

$dL = (4πr^2 dr) pϵ, \tag{15.46}$

or

$\frac{dL}{dr} = 4πr^2 ρ(r) ϵ(r). \tag{15.47}$

All we need to do now is find the physical process by which energy is generated, and determine how ``ϵ`` depends on the temperature, density, and chemical composition within a star.
"""

# ╔═╡ 72f8d370-c09b-4012-aff1-c2deeabb2748
md"""
**Remark.**
The answer to the question Why do stars shine? is Stars shine because they are hot.
The obvious follow-up question is Why don't they cool down?
There are several possible answers to this question.
One possible source of energy for stars is **gravitational potential energy**.
The current gravitational potential energy of the Sun is

$U_⊙ = -q \frac{GM_⊙^2}{R_⊙}, \tag{15.48}$

where ``q`` is a factor of order unit.
For a sphere of uniform density, as we computed in equation (10.24), the factor is ``q = 3/5``.
Stars, however, are centrally concentrated and have ``q ≈ 1.5``.
For the Sun, then,

$U_⊙ = -1.5 \frac{GM_⊙^2}{R_⊙} ≈ -5.7 × 10^{41} \text{ J}. \tag{15.49}$

Since the Sun started as a gas cloud with ``r ≫ R_⊙``, in collapsing to its present size, it lost ``5.7 \times 10^{41} \text{ J}`` of gravitational potential energy.
If all this energy were converted to photons, it would keep the Sun at its present luminosity for a time equal to the **Kelvin--Helmholtz time**:

$t_\text{KH} = \frac{|U_⊙|}{L_⊙} = \frac{5.7 \times 10^{41} \text{ J}}{3.9 \times 10^{26} \text{ J s}^{-1}} ≈ 1.5 \times 10^{15} \text{ s} ≈ 50 \text{ Myr}. \tag{15.50}$

In the 1850s, Helmholtz proposed that the Sun was powered by gravitational potential energy, and computed its age as being ``t_{\text{KH}} ∼ 20 \text{ million years}``.
(With no knowledge of the interior structure of the Sun, Helmholtz assumed it was of uniform density, thus underestimating ``|U_⊙|`` and ``t_{\text{KH}}``.)
Slightly later, Kelvin, taking into account the nonuniform density of the Sun, calculated a value of ``t_{\text{KH}} ∼ 60 \text{ million years}``.
Nineteenth-century geologists were dubious of the results of Helmholtz and Kelvin.
They pointed out, quite rightly, that the fossil record implies that the Sun has been shining at a roughly constant luminosity for a time much longer than 60 million years.
"""

# ╔═╡ bd9b55c2-484b-4976-b048-3411e06cb416
md"""
**Remark.**
It was not until the 1930s that astrophysicists had the grand realization that **nuclear fusion** provides the necessary energy to keep the stars hot.
The Sun, like other main sequence stars, fuses hydrogen into helium:

- Mass of 4 hydrogen nuclei = ``6.6905 \times 10^{-27} \text{ kg}``

- Mass of 1 helium nucleus = ``6.6447 \times 10^{-27} \text{ kg}``

- Mass difference = ``0.0458 \times 10^{-27} \text{ kg}``

When four hydrogen atoms fuse to form one helium atom, the lost mass, ``\Delta m = 4.58 \times 10^{-29} \text{ kg}``, is converted to energy.
The conversion rate is given by Einstein's formula:

$\Delta E = (\Delta m) c^2 = 4.1 \times 10^{-12} \text{ J}. \tag{15.51}$

Fusing together four hydrogen atoms doesn't create a lot of energy: ``4.1 \times 10^{-12} \text{ J}`` is about enough to lift a nickel through a height of ``1 \text{ Å}`` against the Earth's gravity at sea level.
However, there are a whole lot of hydrogen atoms inside a star.
If the Sun had started out made entirely of hydrogen, it would have contained ``N_\text{H}`` hydrogen atoms, where

$N_\text{H} = \frac{M_⊙}{m_p} ≈ \frac{1.99 \times 10^{30} \text{ kg}}{1.67 \times 10^{-27} \text{ kg}} ≈ 1.2 \times 10^{57}. \tag{15.52}$

Fusing all the hydrogen atoms into ``N_\text{H} / 4`` helium atoms would release an amount of energy

$E_\text{fus} = \frac{N_\text{H}}{4} \Delta E = \frac{1.2 \times 10^{57}}{4} (4.1 \times 10^{-12} \text{ J}) = 1.2 \times 10^{45} \text{ J}. \tag{15.53}$

This is about 2000 times the magnitude of the Sun's gravitational potential energy.
Thus, fusion can keep the Sun shining at a constant rate for a time

$t_\text{fus} = \frac{E_\text{fus}}{L_⊙} ≈ 3.3 \times 10^{18} \text{ s} ≈ 100 \text{ Gyr}. \tag{15.54}$

In truth, the Sun wasn't pure hydrogen when it started out, and the conversion of hydrogen to helium in the Sun isn't total; only the central ``∼ 10\%`` of the Sun's mass is at temperatures high enough for fusion to take place.
The lifetime of the Sun, as a consequence, is only ``∼ 10`` gigayears instead of ``∼ 100`` gigayears.
It is still comfortably longer than the Kelvin--Helmholtz time, though.
"""

# ╔═╡ 04cebcf7-c2ed-4f44-b3c4-45687cf3bc0e
md"""
**Remark.**
All main sequence stars are powered by the fusion of hydrogen into helium in their central regions.
The Sun's main sequence lifetime is ``τ_⊙ = 10 \text{ Gyr}``.
Since the main sequence lifetime is ``τ ∝ M/L`` and since the approximate mass-luminosity relation is ``L ∝ M^4`` for stars with ``M > 0.7M_⊙`` (Section 13.6), the main sequence lifetime of a massive star is

$τ ≈ 10 \text{ Gyr} \left(\frac{M}{1M_⊙}\right)^{-3}. \tag{15.55}$

The lifetime of a ``20M_⊙`` star (with spectral type 09) will be only ``1 \text{ Myr}``.
The lifetime of a ``0.5M_⊙`` star (spectral type M0) will be ``80 \text{ Gyr}``, longer than the age of our galaxy.
Every M dwarf ever made is still fusing hydrogen into helium; they aren't going to run out of fuel any time soon.
"""

# ╔═╡ a5805b68-ee6e-4574-a1de-7a0c765d6719
md"## 15.3 Nuclear Fusion Reactions"

# ╔═╡ cdb4b9ae-c308-4961-be18-b9110bf8e81a
md"""
**Remark.**
The fundamental source of energy in stars over most of their lifetime is fusion of light elements into heavier elements.
The first of these reactions is the fusion of two protons into a deuteron.
This can happen only if the protons can approach close enough that the very short-range but powerful **strong nuclear force** can overcome the long-range electronic Coulomb repulsion between the two protons, as illustrated in Figure 15.3.
The potential energy of two protons separated by a distance ``r`` is

$U = \frac{e^2}{4πϵ_0} \frac{1}{r}. \tag{15.56}$

The strong nuclear force has a range of only ``10^{-15} \text{ m}``, and the electrostatic potential energy of two protons at this separation is

$\begin{align*}
U &≈ \frac{(1.60 \times 10^{-19} \text{ C})^2}{4π (8.8 \times 10^{-12} \text{ C}^2 \text{ J}^{-1} \text{ m}^{-1})(1.60 \times 10^{-19} \text{ J eV}^{-1})(10^{-15} \text{ m})} \\
&≈ 1.4 \times 10^6 \text{ eV} ≈ 1.4 \text{ MeV}. \tag{15.57}
\end{align*}$
"""

# ╔═╡ 9c5626c8-c20d-4b15-a7a6-17ecfd1fe864
md"""
**Remark.**
To overcome the repulsion, the kinetic energy of a proton must exceed this potential energy; this is possible in a high-temperature gas, so the fusion processes in such environments are often called **thermonuclear reactions**.
The typical kinetic energy of a proton at the center of the Sun is (see equation 5.46)

$\begin{align*}
⟨E⟩ &= \frac{3kT_c} ≈ \frac{3(1.38 \times 10^{-23} \text{ J K}^{-1})(1.47 \times 10^7 \text{ K})}{2(1.60 \times 10^{-19} \text{ J eV}^{-1})} \\
&≈ 2 \times 10^3 \text{ eV} ≈ 2 \text{ keV}. \tag{15.58}
\end{align*}$

It thus seems that even at the Sun's center, protons have insufficient energy to overcome their mutual Coulomb repulsion.
The nuclear reactions can occur nevertheless because of **quantum mechanical tunneling**.
An elementary particle like a proton can't be treated like a macroscopic object such as a tennis ball, which must be on one side or the other of a barrier such as a net.
A typical proton near the Sun's center has a kinetic energy ``E ≈ 2 \text{ keV}`` and a speed ``v = (2E / m_p)^{1/2} ≈ 0.002c``.
The proton is thus nonrelativistic and has a momentum ``p = m_p v ≈ 1 \times 10^{-21} \text{ kg m s}^{-1}``.
This leads to a de Broglie wavelength for the proton of ``λ_\text{dB} = h / p ≈ 7 \times 10^{-13} \text{ m}``, much larger than the range of the strong nuclear force.
Thus, when discussing fusion reactions in the Sun, we can't treat protons like classical tennis balls; their wavelike quantum nature must be taken into account.
"""

# ╔═╡ e05a5b82-1666-4852-ae3a-8f4a8828176f
md"""
**Remark.**
Tunneling is a quantum mechanical process; for a proton to have any significant chance of tunneling through the Coulomb barrier around another proton, two criteria must be satisfied.
First, the proton--proton separation must be comparable to the de Broglie wavelength, ``λ_\text{dB} = h / p = h(2m_p E)^{-1/2}``.
Second, the kinetic energy ``E`` of the proton must be comparable to the electrostatic potential energy ``U`` at that separation.
These two criteria require that

$U = \frac{e^2}{4πϵ_0} \frac{1}{λ_\text{dB}} = \frac{e^2}{4πϵ_0} \frac{(2m_p E)^{1/2}}{h} ≈ E. \tag{15.59}$

Solving for ``E``, we find that the minimum kinetic energy at which tunneling has a significant probability is

$E ≈ \left(\frac{e^2}{4πϵ_0}\right)^2 \frac{2m_p}{h^2} ≈ \frac{1}{2π^2} α^2 m_p c^2 ≈ 3 \text{ keV}. \tag{15.60}$

This energy is comparable to the average kinetic energy, ``⟨E⟩ ∼ 2 \text{ keV}``, in the Sun's core.
Thus, we expect tunneling to be possible in the Sun.
"""

# ╔═╡ ee5d3754-b434-4c99-86dd-94e4fe476271
md"""
**Remark.**
To do a slightly more sophisticated calculation of fusion rates in the Sun's central regions, start by considering a single proton with kinetic energy ``E`` and de Broglie wavelength ``λ_\text{dB} = h(2m_p E)^{-1/2}``.
If the number density of protons at the Sun's center is ``n_p``, then the mean free path of our proton before it undergoes fusion with another proton is

$ℓ_\text{pp} = \frac{1}{n_\text{p} σ_\text{pp}}, \tag{15.61}$

where ``σ_\text{pp}`` is the cross-section for the fusion of two protons.
Since a proton must come within a de Broglie wavelength of another proton before fusing, we might expect a cross-section ``σ_\text{pp} ∼ πλ_\text{dB}^2 ∝ 1/E``.
However, coming within a de Broglie wavelength doesn't guarantee a successful quantum tunneling event.
The probability of tunneling, given a separation of ``λ_\text{dB}`` or less, is given by the **Gamow factor**

$P_G ∼ \exp\left(-\sqrt{\frac{E_G}{E}}\right), \tag{15.62}$

where the **Gamow energy** for proton--proton encounters is ``E_G = π^2 α^2 m_p c^2 = 490 \text{ keV}``.
Second, quantum tunneling doesn't guarantee a successful fusion event.
Proton--proton fusion is mediated by the weak nuclear force and has a tiny cross-section.
The probability ``P_\text{fus}`` that fusion occurs, given that quantum tunneling through the Coulomb barrier has already taken place, is a small number--but one that is only weakly dependent on the proton speed.
The cross-section for proton--proton fusion can thus be written in the form

$σ_\text{pp} = πλ_\text{dB}^2 P_G P_\text{fus} ≈ \frac{πh^2}{2m_p E} \exp\left(-\sqrt{\frac{E_G}{E}}\right) P_\text{fus}. \tag{15.63}$

Since our proton is traveling along with a speed ``v = (2E/m_p)^{1/2}``, its average time spent before fusing with another proton is

$t_\text{pp} = \frac{ℓ_\text{pp}}{v} = \frac{1}{n_p σ_\text{pp} v}. \tag{15.64}$
"""

# ╔═╡ d515ce0e-f9a7-48bb-8e56-9321cf71db7f
md"""
**Remark.**
If all protons in the Sun had the same speed ``v``, then the total number of proton--proton fusions per unit volume per unit time would be

$N_\text{pp} = \frac{1}{2} \frac{n_p}{t_\text{pp}} = \frac{1}{2} n_p^2 σ_\text{pp} v. \tag{15.65}$

(The factor of 1/2 enters because it takes two protons to perform one fusion.)
Expressed as a function of proton kinetic energy ``E``, the proton--proton fusion rate is

$N_\text{pp} (E) = \frac{n_p^2}{2} σ_\text{pp} \sqrt{2E / m_p} ≈ \frac{π}{2\sqrt{2}} \frac{h^2 n_p^2 P_\text{fus}}{m_p^{3/2}} \frac{1}{E^{1/2}} \exp\left(-\sqrt{\frac{E_G}{E}}\right). \tag{15.66}$

Of course, real protons at the Sun's center don't all have the same kinetic energy ``E``; instead, they have a range of kinetic energies, given by a Maxwell--Boltzmann distribution (equation 5.46):

$F(E) ∝ E^{1/2} \exp(-E / kT). \tag{15.67}$

The proton--proton fusion rate, averaged over all proton kinetic energies at a given temperature ``T``, is 

$⟨N_\text{pp}⟩ = ∫_0^∞ N_\text{pp}(E) F(E) \,dE. \tag{15.58}$

Using equation (15.66) for the fusion rate at energy ``E``, and equation (15.67) for the distribution of ``E``, we find, after a bit of algebra,

$⟨N_\text{pp}⟩ ∝ \frac{n_p^2 P_\text{fus}}{(kT)^{3/2}} ∫_0^∞ \exp\left[-\sqrt{\frac{E_G}{E}} - \frac{E}{kT}\right] dE. \tag{15.69}$

Here we have taken the liberty of ignoring the mild dependence of the fusion probability ``P_\text{fus}`` on proton kinetic energy and have taken it outside the integral.
"""

# ╔═╡ af06fb26-9149-4823-9ac2-5a1e075a480e
md"""
**Remark.**
The integrand in equation (15.69) is the product of the Gamow factor (which goes to zero at energies much smaller than the Gamow energy ``E_G``) and a Boltzmann exponential (which goes to zero at energies much greater than the thermal energy ``kT``).
The Gamow factor, and also the Boltzmann exponential for the Sun's central temperature ``T_c = 1.47 \times 10^7 \text{ K}``, are shown in Figure 15.4.
The solid line in the figure represents the integrand in equation (15.69) and graphically shows us the proton energy at which fusion is most likely to occur.
At low energies, the protons are more numerous, but the tunneling probability is smaller.
At high energies, the tunneling probability is higher, but the number of protons is dropping steeply.
The maximum reaction rate is expected at ``E ∼ 6 \text{ keV}``, roughly three times the average proton energy.
The relatively narrow energy range between ``∼ 3 \text{ keV}`` and ``∼ 11 \text{ keV}``, where the reaction rate is highest, is called the **Gamow window**.
"""

# ╔═╡ 4e378b64-baa3-48f9-b4b8-8626edd43826
md"""
**Remark.**
Fusion of hydrogen into helium occurs by a series of two-body collisions, instead of a single, grand four-body collision.
For stars with central temperatures less than 18 million Kelvin (this includes the Sun), helium is created from hydrogen via the **PP chain**, illustrated in Figure 15.5.
In the first step of the chain, two protons ``(\text{p})`` fuse together to form a deuteron ``({}^2\text{H})``.
A deuteron is the nucleus of a deuterium (or "heavy hydrogen") atom, and consists of a proton and neutron held together by the strong nuclear force.
When one of the protons is converted to a neutron held together by the strong nuclear force.
When one of the protons is converted to a neutron, a positron ``(e^+)`` is emitted to conserve change, and an electron neutrino ``(ν_e)`` is emitted to conserve electron quantum number.
Because ``P_\text{fus}`` is so small for proton--proton fusion, the first step of the PP chain is the slowest one.
During the past 4.6 billion years, only half the protons in the Sun's core have undergone fusion.
In the second step of the PP chain, the deuteron ``({}^2\text{H})`` fuses with a proton to form light helium ``({}^3\text{He})``, which contains two protons and only one neutron.
The excess energy from the fusion is carried away by a gamma-ray photon ``(γ)``.
In the final step of the PP chain, two light helium nuclei fuse together to form ordinary helium ``({}^4\text{He})``, which contains two protons and two neutrons.
The excess protons are spat out, ready to begin a new PP chain.
"""

# ╔═╡ 3c77d98b-b00e-4828-b7f2-be8628bda392
md"""
**Remark.**
The net result of the PP chain is

$4\text{p} → {}^4\text{He} + 2e^+ + 2ν_e + 2γ. \tag{15.70}$

The positrons quickly annihilate with electrons to form additional gamma rays.
The neutrinos carry away only 2% of the energy released in the PP chain; gamma rays take away the rest.
The neutrinos, because of their extremely tiny cross-sections for interactions, stream freely through the Sun.
In other words, although the Sun is opaque to photons, it is transparent to neutrinos.
The Sun emits about ``2 \times 10^{38}`` neutrinos per second (of which roughly ``10^{15}`` are destined to pass through your body, which is also transparent to neutrinos).
"""

# ╔═╡ b02635b7-9419-442c-a646-a7c2575d5ea4
md"""
**Remark.**
In main sequence stars with central temperatures greater than 18 million Kelvin (this includes O, B, A, and F stars), hydrogen is fused into helium via the **CNO cycle** illustrated in Figure 15.6.
In the CNO cycle, carbon (C), nitrogen (N), and oxygen (O) act as catalysts to speed the fusion of hydrogen.
The net result of the CNO cycle is

$4p → {}^4 \text{He} + 2e^+ + 2ν_e + 3γ. \tag{15.71}$

Again, the positrons annihilate with electrons to form additional gamma rays.
"""

# ╔═╡ c9717c6f-9545-400c-8787-f75487c32464
md"""
**Remark.**
Fusion of hydrogen into helium is a reasonably efficient form of energy; about 0.7% of the hydrogen's mass is converted into energy in the process.
However, still more energy can be squeezed out of a star if the helium is fused into heavier and heavier elements, until iron is reached.
Iron has the lowest mass per nucleon of any element, so it is the end of the line as far as fusion is concerned.
The process by which stars convert helium to carbon is the **triple alpha process**.
In the first step of the triple alpha process, two helium nuclei fuse to form a beryllium nucleus:

${}^4 \text{He} + {}^4 \text{He} → {}^8\text{Be} + γ. \tag{15.72}$

The ``{}^8 \text{Be}`` nucleus is extremely unstable; it decays back into a pair of helium nuclei with a half-life of only ``t_{1/2} ∼ 2 \times 10^{-16} \text{ s}``.
However, if the ``{}^8 \text{Be}`` nucleus encounters a ``{}^4 \text{He}`` nucleus during the brief period before it decays, the two nuclei can fuse to form a stable ``{}^{12} \text{C}`` nucleus:

${}^4 \text{He} + {}^8\text{Be} → {}^{12}\text{C} + γ. \tag{15.73}$

Thus, the net result of the triple alpha process is the conversion of three ``{}^4 \text{He}`` nuclei into a single ``{}^{12} \text{C}`` nucleus.
Because the beryllium nucleus has such a brief life, it will encounter a helium nucleus and fuse only if the surroundings are very dense (which increases the number density of helium nuclei) and very hot (which increases the average speed of the helium nuclei).
In practice, the triple alpha process occurs at a significant rate only when ``T_c > 10^8 \text{ K}``.
The Sun isn't currently fusing helium into carbon, because it's not hot enough.
"""

# ╔═╡ d721d767-4eea-4409-b5fd-0f70d978d8d2
md"## 15.4 Modeling Stellar Interiors"

# ╔═╡ 59ae3a5d-a151-4c14-9c47-c62b7082b5d1
md"""
**Remark.**
We now have the basic equations that govern the structure of stellar interiors.
In particular, there are four differential equations that astronomers refer to collectively as the **equations of stellar structure**.
First, the equation of hydrostatic equilibrium is

$\frac{dP}{dr} = -\frac{GM(r) ρ(r)}{r^2}. \tag{15.74}$

Second, the equation of mass continuity is

$\frac{dM}{dr} = 4πr^2 ρ(r). \tag{15.75}$

Third, the equation of energy transport is

$\frac{dT}{dr} = -\frac{3κ(r) ρ(r) L(r)}{64πσ_\text{SB} r^2 T(r)^3} \quad\text{[for adiative transport]} \tag{15.76}$

or

$\frac{dT}{dr} = \left(1 - \frac{1}{γ}\right) \frac{T(r)}{P(r)} \frac{dP}{dr} \quad\text{[for convective transport]} \tag{15.77}$

with the energy transport mechanism, radiative or convective, determined by which gives the smaller temperature gradient.
Fourth, the equation of energy generation is

$\frac{dL}{dr} = 4πr^2 ρ(r) ϵ(r). \tag{15.78}$

To solve this set of equations, we need boundary conditions at the photosphere.
We also need to know the equation of state; the ideal gas law usually works just fine within stars:

$P(r) = \frac{κρ(r) T(r)}{μ(r) m_p}. \tag{15.79}$

In addition, however, we need to know how the mean molecular mass ``μ(ρ, T)``, opacity ``κ(ρ, T)``, and energy generation rate ``ϵ(ρ, T)`` depend on density and temperature within the star.
The energy generation rate ``ϵ``, in particular, is extremely sensitive to temperature.
For the PP chain, ``ϵ ∝ T^4``, and for the CNO cycle, ``ϵ ∝ T^{20}``.
"""

# ╔═╡ e704e2a3-ffbf-4caa-90f8-28ea6f13663e
md"""
**Remark.**
Given all this information, models of stellar interiors can be built up by numerically solving the five equations of stellar structure.
In the mid-twentieth century, back in the time of slide rules and mechanical calculating machines, you could earn a PhD by modeling a single star.
Nowadays, computers can crank out stellar models on an assembly line.
The result of a model of the Sun's interior is shown in Figure 15.7.
Note in particular that most of the Sun's luminosity comes from ``r < 0.2R_⊙``.
Because of the strong dependence of ``ϵ`` on temperature, as the temperature ``T`` gradually drops with ``r``, the energy generation rate ``ϵ`` plummets.
It is also interesting to note that the Sun's central density is roughly 150 times the density of water.
The high temperatures in the core keep the material in ionized gaseous form, despite its high density.
"""

# ╔═╡ 2e246113-10f4-410f-8f56-93b21cd565db
md"""
**Remark.**
How do we know that our models of the solar interior are correct?
The boundary conditions are determined by the well-observed properties of the photosphere.
The equations of stellar structure (eqs. 15.74--15.78) are based on well-understood physics.
Nevertheless, it is a good thing to verify our models by comparison with observations.
Although we cannot see directly into the Sun's interior, there are indirect methods by which we can deduce the Sun's interior structure.
For instance, **helioseismology** (the study of seismic waves in the Sun's interior) can tell us the sound speed inside the Sun.
In the interior of the Earth, as mentioned in Section 9.1, both S-waves (shear waves) and P-waves (pressure waves) can propagate.
In the interior of the Sun, S-waves, which can only propagate through solids, are not found.
However, P-waves, which are sound waves, are free to move throughout the Sun's interior.
Because the sound speed in a gas is ``c_s ∝ T^{1/2}``, it increases as you go farther into the Sun's interior.
This causes P-waves (sound waves) to be refracted upward.
"""

# ╔═╡ 588bd817-1285-4af4-be55-8c4ea7c8a1bc
md"""
**Remark.**
Although it is impractical to put a seismometer in the Sun's photosphere, we can see the vertical motions of the photosphere in a "dopplergram" (Figure 15.8), which shows the Doppler shift as a function of position on the visible hemisphere of the Sun.
The rotation of the Sun can be seen in Figure 15.8, as well as the upward and downward motions due to P-waves reaching the photosphere.
The sound oscillations in the Sun can be decomposed into different modes using spherical harmonics (in much the same way that the sound from a piano can be decomposed into different frequencies using Fourier transforms).
The observed modes of oscillation can be used to determine the sound speed as a function of radius within the Sun.
The sound speeds measured in this way agree with those predicted by the best solar models with errors of < 0.1%.
"""

# ╔═╡ 47711a5c-e208-4ced-ba21-28b41befceae
md"""
**Remark.**
Another source of information about the Sun's interior is **solar neutrinos**.
The PP chain that provides most of the fusion energy in the Sun's core produces two electron neutrinos for every helium nucleus created.
These elecrton neutrinos fly straight through the Sun with a very tiny chance of interaction.
Thus, if we could manage to capture a few of the neutrinos, we would have a direct window on the fusion reactions at the Sun's center.
Although neutrinos have small cross-sections for interaction with "ordinary" matter, they are capable of undergoing reactions such as

$ν_e + {}^{37} \text{Cl} → {}^{37} \text{Ar} + e^- \tag{15.80}$

and

$ν_e + {}^{71} \text{Ga} → {}^{71} \text{Ge} + e^-. \tag{15.81}$

Over the past three or four decades, typical solar neutrino experiments have involved filling large tanks with carbon tetrachloride or gallium and waiting for the infrequent neutrino reactions.
Numerous hunts for solar neutrinos all found that only a third the expected number of electron neutrinos were detected.
Astronomers and physicists scrambled to solve the "solar neutrino problem," as it was called.
One suggested solution was that the solar interior was slightly cooler than the standard solar models suggested; this would drive down the rate of energy generation, since ``ϵ ∝ T^4``.
However, helioseismology confirmed that the temperatures predicted by the standard solar model were correct.
"""

# ╔═╡ d76c81a5-d2dd-42cd-a857-92858407bb41
md"""
**Remark.**
The ultimate resolution of the solar neutrino problem came from particle physics.
There are three types, or flavors, of neutrinos.
In addition to the electron neutrinos, ``v_e``, there are also muon neutrinos, ``ν_μ``, and tau neutrinos, ``ν_τ``.
Although nuclear fusion produces only electron neutrinos, if neutrinos have mass and if the masses of the three types differ, then electron neutrinos can spontaneously convert into muon or tau neutrinos.
Recent neutrino experiments indicate that the three types of neutrino really do have (small) masses.
In addition, the Sudbury Neutrino Observatory, located in a former nickel mine in Ontario, has searched for neutrinos of all three types.
The heart of the Sudbury detector is a large tank filled with heavy water ``(\text{D}_2 \text{O})``.
The deuterium (or "heavy hydrogen") has a small probability of being split by a neutrino:

$ν + \text{D} → \text{p} + \text{n} + ν. \tag{15.82}$

This reaction occurs for any kind of neutrino and thus doesn't distinguish among ``ν_e``, ``ν_μ``, and ``ν_τ``.
The total number of all neutrinos detected by Sudbury is consistent with the number predicted by the standard solar model.
This indicates that some of the electron neutrinos have been converted to muon and tau neutrinos during their flight from the Sun to Ontario.
"""

# ╔═╡ c1661848-8003-4a40-9308-7cda4f42b6ce
md"# 16 The Interstellar Medium"

# ╔═╡ 839139c6-423c-46c8-9c15-5f43bcc706e0
md"""
**Remark.**
Stars are formed by gravitational compression of the **interstellar medium**, that is, the low-density mix of dust and gas that lies in the space between stars.
In this chapter, we introduce the basic characteristics and physical properties of the interstellar medium as a prelude to a discussion of star formation and evolution.
"""

# ╔═╡ 29cd9d46-8d21-4aa4-8f22-5a973bd486dd
md"## 16.1 Interstellar Dust"

# ╔═╡ ee507b3a-1537-498a-b322-d813fcb6f109
md"### 16.1.1 Evidence for Interstellar Dust"

# ╔═╡ 9ade260f-dfe8-4c5f-a6b3-44a75e7792fb
md"""
**Remark.**
We first noted in Section 13.3 that interstellar dust affects the light of distant stars by **extinction**, or the diminution of light, and **reddening**, as the shorter-wavelength light is more highly extinguished than longer-wavelength light.
Observations of the effects of dust yield clues that help us to determine the size, shape, and composition of dust grains.
"""

# ╔═╡ f2da9b05-d722-43e5-b1a6-b67c3f094e6b
md"""
**Clue one.**
Dust causes reddening at both visible and ultraviolet wavelengths.
"""

# ╔═╡ 57d726f0-5965-46e6-8452-0e506527ffd6
md"### 16.1.2 Observable Effects of Dust on Starlight"

# ╔═╡ 74b60a1a-52a3-4877-9e94-fa3e555dde6c
md"""
**Remark.**
Here we consider from an observational point of view how light from distant stars is attenuated by interstellar dust.
"""

# ╔═╡ f9953311-2cce-450d-8d42-9f4bb2f13055
md"## 16.2 Interstellar Gas"

# ╔═╡ 29f900a7-8d55-4049-a859-2dd36fe8f3b4
md"""
**Remark.**
At visible wavelengths, dust is a highly prominent component of the interstellar medium.
However, dust contributes only a minority of the material between stars.
By mass, the interstellar medium is just 1% dust; the remaining 99% is contributed by **interstellar gas**.
Although the bulk of the gas is low-density hydrogen and helium, which is not necessarily easy to detect, there are many ways in which interstellar gas makes its presence known.
"""

# ╔═╡ 7c427286-4aae-4af3-8bab-244ff143ba40
md"## 16.3 The Physics of Non-LTE Gases"

# ╔═╡ ccdc7f0e-ad78-4a03-b330-da1333a2af5b
md"""
**Remark.**
Luminous 𝐇 𝐈𝐈 regions around stars of spectral type O and B constitute a conspicuous component of the interstellar medium.
Main sequence stars of type O and B are the hottest, most luminous, and shortest-lived stars on the main sequence.
Because of their short main sequence lifetimes, O and B stars never stray far from the site where they formed, and hence they are surrounded by the relatively high-density gas ``(n ≳ 10^7 \text{ m}^{-3})`` characteristic of star formation regions.
The copious ultraviolet radiation emitted by these hot stars ionizes the as surrounding them, creating a bright 𝐇 𝐈𝐈 region.
"""

# ╔═╡ 1761fbc0-00e0-4ad5-9f6e-65a9ccf3d425
md"### 16.3.1 Ionization Balance"

# ╔═╡ 40eb33ad-544a-4d50-b318-2edb44dd7fd6
md"""
**Remark.**
The ionized gas of an 𝐇 𝐈𝐈 region is optically thin at most wavelengths; thus the photons in the 𝐇 𝐈𝐈 region are not in local thermodynamic equilibrium with the electrons and ions (Section 5.6).
"""

# ╔═╡ 1edf99ca-30c6-44e1-9f9a-0ac9536600d4
md"### 16.3.2 Thermal Balance"

# ╔═╡ 0d5eea0e-ff31-4bd2-a541-02eb8ddb9370
md"""
**Remark.**
The temperature of the free electrons in an 𝐇 𝐈𝐈 region, as mentioned above, is generally ``T_e ≈ 10{,}000 \text{ K}``, corresponding to a mean kinetic energy ``E = (3/2) kT_e ≈ 1.3 \text{ eV}``.
"""

# ╔═╡ de92a382-944b-4881-96f5-a458910cd9bf
md"# 17 Formation and Evolution of Stars"

# ╔═╡ 50233d82-f631-4fe8-bd89-007c761c3e51
md"""
**Remark.**
The equations of stellar structure (eqs. 15.74--15.78) do not contain any explicit time dependence.
"""

# ╔═╡ 1ab6c2dc-8bff-4068-a47b-9eb0134b48bb
md"## 17.1 Star Formation"

# ╔═╡ 4100760d-a5ef-49f0-83c0-ad5216512fbc
md"""
**Remark.**
Stars form by the gravitational collapse of the densest, coolest regions of the interstellar medium.
"""

# ╔═╡ f5ecc408-4bfc-4546-a8e0-336b5279d16a
md"## 17.2 Evolution of Sun-like Stars"

# ╔═╡ fccc4ff2-9ae8-4e1a-aded-523a94c90824
md"""
**Remark.**
Once the Sun started fusing hydrogen in its core, its time evolution became very gradual.
"""

# ╔═╡ e7757be3-2050-4282-bd4b-c3965e0d9ce1
md"## 17.3 Pulsating Variable Stars"

# ╔═╡ dbc2b1a1-4451-4704-8c29-94fe62fb1a5c
md"""
**Remark.**
During the Sun's main sequence lifetime, its properties change slowly.
"""

# ╔═╡ b5372078-4b2d-49df-9fc8-f21f727689ab
md"# 18 Stellar Remnants"

# ╔═╡ 47ebc2de-622d-47e0-b323-3f34b1b96d22
md"""
**Remark.**
The life history of a star is determined primarily by its **mass**; if you know a star's initial mass, you know (at least in broad outline) how it will evolve.
"""

# ╔═╡ 8ef7a85c-5c91-46ff-bab0-5d7e24793074
md"## 18.1 White Dwarfs"

# ╔═╡ a120bf16-6734-4dba-8397-2f1ca6b28086
md"""
**Remark.**
A white dwarf is a stellar remnant supported by electron degeneracy pressure.
"""

# ╔═╡ 6ff6ce0e-91f3-4fbd-8b43-f35c61506cc0
md"""
**Remark.**
White dwarfs are high in density compared to main sequence stars.
"""

# ╔═╡ 43006026-52e7-49f8-8f5e-d1adc607c67d
md"### 18.1.1 Degeneracy Pressure"

# ╔═╡ 5d09bdbf-acf5-4b23-8be2-b4ee798593ea
md"""
**Remark.**
As noted in Section 17.2, electrons become **degenerate** when they are packed closely enough that the Pauli exclusion principle produces an additional form of pressure to keep them apart.
"""

# ╔═╡ 7c2b7274-0836-463d-8b17-03877d62ac39
md"""
**Remark.**
Thanks to the uncertainty principle, degenerate electrons are zipping around with a speed ``v_e ∝ n_e^{1/3}`` regardless of how low the temperature drops.
"""

# ╔═╡ d3cb3493-9213-45f4-8396-68b4f1c29f88
md"### 18.1.2 Mass--Radius Relationship"

# ╔═╡ 3219ca96-910d-4c33-8382-650adc1239ef
md"""
**Remark.**
Because white dwarfs are supported by electron degeneracy pressure, we can derive a simple mass--radius relation for white dwarfs.
"""

# ╔═╡ 72678f1c-0131-4ba3-bf72-7691ac9f056e
md"""
**Remark.**
Notice the counterintuitive result that more massive white dwarfs have a smaller radius.
"""

# ╔═╡ 879dd658-cfc8-47f2-b3ae-461e2e504a83
md"""
**Remark.**
As the pressure ``P`` drops with distance from the center of the white dwarf, so does the density ``ρ ∝ P^{3/5}`` (equation 18.13).
"""

# ╔═╡ 700f168f-56c5-4c54-b738-0e578a2f2ca8
md"## 18.2 Neutron Stars and Pulsars"

# ╔═╡ a5da4c2b-b754-4e26-9500-451ab79c5d4a
md"""
**Remark.**
What happens to stars whose initial mass is greater than ``7M_⊙``?
"""

# ╔═╡ a283e9de-e3d6-43c2-9e67-ed9e08b35deb
md"## 18.3 Black Holes"

# ╔═╡ a7d78736-de62-4261-a299-dc4eff889f4d
md"""
**Remark.**
Neutron stars are not the ulimate in compression for stellar remnants.
"""

# ╔═╡ 6ef68e8c-e0ae-4972-8ce3-1119fd2559bc
md"## 18.4 Novae and Supernovae"

# ╔═╡ 2f71a45c-88e1-4016-bba7-7b10f57eff5a
md"""
**Remark.**
On the evening of 1572 November 11, Tycho Brahe was contemplating the night sky when he saw what he though was a new star in the constellation Cassiopeia.
"""

# ╔═╡ 6ebda95b-b3c3-4e4a-8e78-ceea22fb1a29
md"# 19 Our Galaxy"

# ╔═╡ 4281a956-48a3-4fcd-b7c2-79b6a304f867
md"""
**Remark.**
Our study of stars began with a definition of the word "star."
"""

# ╔═╡ 1f0eb2b3-8c3b-4d81-ad85-64bc83a9cc57
md"## 19.1 Overview: Morphology of Our Galaxy"

# ╔═╡ 5cfb4fd8-d7af-43e0-aa17-d934011bf194
md"""
**Remark.**
On a dark night, far from city lights, you can see a luminous band of light across the sky, forming a great circle on the celestial sphere (Figure 19.1).
"""

# ╔═╡ 6e89d4db-3f88-40cc-9c78-1d1a7afa0700
md"## 19.2 Overview: Kinematics and Dynamics of our Galaxy"

# ╔═╡ ff36e8ed-4e3e-43e0-a920-501b5d079004
md"""
**Remark.**
An image of a spiral galaxy, like that of Figure 19.5, looks very dynamic, like a snapshot of a hurricane.
"""

# ╔═╡ c1d69aa8-69ef-4370-8f18-04af7daff235
md"## 19.3 Local Stellar Motions"

# ╔═╡ bee961d1-54f5-4f6e-84fa-17076e91b9cc
md"""
**Remark.**
Thus far, we have examined the global picture of our galaxy, outlining its general size, shape, mass, and composition.
"""

# ╔═╡ e4787102-2331-4239-b302-520a441d0cee
md"## 19.4 The Local Standard of Rest"

# ╔═╡ 63d1921f-e487-40ba-8552-8af3281e77ec
md"""
**Remark.**
If the disk of our galaxy were perfectly orderly, with all the stars on exactly circular orbits in the same plane, it would be simple to compute the expected velocity of stars relative to the Sun.
"""

# ╔═╡ bd644419-203b-453c-8863-6c37c2222468
md"## 19.5 Differential Rotation of our Galaxy"

# ╔═╡ ea3b8149-66e5-4e3d-8b7e-6314c3e2d395
md"""
**Remark.**
Since we know the Sun's velocity relative to the Local Standard of Rest, if we measure the velocity of a star relative to the Sun, it is a straightforward piece of vector algebra to convert it into a velocity relative to the LSR.
"""

# ╔═╡ ad114aec-548a-4266-b9e4-ebc4075dd05b
md"## 19.6 Determining the Rotation Curve"

# ╔═╡ 50ee1716-7b9f-4ee5-8049-7db726152c10
md"""
**Remark.**
The Oort constants ``A`` and ``B`` tell us the value of the angular velocity ``ω`` and its radial derivative ``dω / dR`` at the Sun's location in the disk.
"""

# ╔═╡ 5be0e509-8ef0-4fea-b24f-5da6adfff6f7
md"## 19.7 The Nucleus of our Galaxy"

# ╔═╡ 5fcaf597-a8c6-40b6-91c0-fb2bc589b961
md"""
**Remark.**
At the distance of the Galactic center, an angle of 1 arcsecond corresponds to a length ``d = 8000 \text{ AU} = 0.039 \text{ pc}``.
"""

# ╔═╡ b8e0c872-3dc1-458b-b58b-8716bf73a2f2
md"# 20 Galaxies"

# ╔═╡ d99bd10b-180c-4a40-a48d-a46f72d7c0ef
md"""
**Remark.**
The *Hubble* Ultra Deep Field (Color Figure 22) is the result of 800 exposures of a single field in the constellation Fornax with the *Hubble Space Telescope*, summing to a total exposure of over 11 days.
"""

# ╔═╡ 418d9ddc-16a0-46df-9b60-bd00b29605f2
md"""
**Remark.**
The universe is as full of galaxies as a pomegranate is of pips.
However, as late as the year 1920, there was still considerable uncertainty among astronomers about whether large galaxies other than the Milky Way Galaxy actually existed.
"""

# ╔═╡ c9d28a3f-6cdf-499f-b1b8-cdb1a3c3f38a
md"""
**Remark.**
That Curtis was essentially correct, and that the Milky Way is just one of many galaxies, started to become clear when Edwin Hubble used the Mount Wilson 100-inch telescope to observe the Andromeda Nebula, the largest of the spiral nebulae.
Hubble detected Cepheid variable stars within the Andromeda Nebula, and showed that it is actually the _**Andromeda Galaxy**_.
In 1929, Hubble published the result of his calculations; the Andromeda Galaxy, he believed, is at a distance ``d = 275 \text{ kpc}``.
"""

# ╔═╡ 9d066880-f09c-4a03-ac91-774ca4f39bc0
md"""
**Remark.**
Hubble's fundamental mistake was that he was comparing two different types of variable stars.
"""

# ╔═╡ 4e54672d-3c29-4b0e-89e5-93434fad81ff
md"## 20.1 Galaxy Classification"

# ╔═╡ f2d4e6c6-485b-43cf-a565-e01e1cae27ee
md"""
**Remark.**
Edwin Hubble, in addition to determining the true nature of the Andromeda Galaxy, also devised the classification scheme for galaxies that we use today.
"""

# ╔═╡ 79cd05dd-0afb-4377-9f54-16759202dc8d
md"""
**Remark.**
THe Hubble scheme divides galaxies into three main classes: **elliptical**, **spiral**, and **irregular** galaxies.
"""

# ╔═╡ ac647f43-02a2-47a8-8f65-08130f5e6faa
md"""
**Remark.**
**Elliptical** galaxies derive their name from the fact that they look like smooth, glowing, elliptical blobs, with no dark dust lanes, no spiral arms, and no bright patches of star formation.
"""

# ╔═╡ b9b91d71-68e4-414e-9bb6-e6d3fae35891
md"## 20.2 Galaxy Spectra"

# ╔═╡ 0aeb97cc-243c-4210-a0b8-a18038189d1c
md"""
**Remark.**
Although a galaxy's shape contains interesting information, it doesn't tell the whole story.
"""

# ╔═╡ b5743d2b-b4c0-4208-b6dd-64434bfc301f
md"## 20.3 Supermassive Black Holes in Galaxies"

# ╔═╡ df0cddf6-112f-40d9-849c-06763bbb1910
md"""
**Remark.**
The spectra of gas and stars in the central regions of galaxies reveals that most, if not all, bright galaxies harbror a supermassive black hole at their center.
"""

# ╔═╡ e93df464-9455-445d-bec9-9d348330ac19
md"## 20.4 Distances to Galaxies"

# ╔═╡ e263d608-4faa-47e8-b0cd-91bf5a083031
md"""
**Remark.**
Knowing the distance to galaxies is of great interest to astronomers, just as it was of great interest to know the distance to stars within our galaxy.
"""

# ╔═╡ 2b058b3a-2610-4125-bcf1-dacfebb9f654
md"## 20.5 The Hubble Law"

# ╔═╡ 2b242b23-3acc-46bf-98e0-aa20cee4fe04
md"""
**Remark.**
In addition to determining the distance to a galaxy from a standard candle, we can determine its radial velocity from its redshift.
In the nonrelativistic limit, ``v_r = cz = c(\Delta λ/λ)``.
As noted in Section 19.3, nearby stars within our own galaxy show a mixture of redshifts ``(z > 0)`` and blueshifts ``(z < 0)``.
This is no surprise; our galaxy is neither expanding nor contracting.
"""

# ╔═╡ 8edb7f45-c608-48bd-8442-7e2cbaa0b84f
md"""
**Remark.**
Another surprise came in 1929, when Edwin Hubble examined how the wavelength shift ``z`` depended on ``d``, the measured distance to a galaxy.
Hubble had ``z`` for about 50 galaxies but had distance estimates for only 25 of them.
When he plotted ``cz`` versus ``d``, he found an approximate linear relation, as shown in Figure 20.11.
"""

# ╔═╡ a60d09e0-874a-4a11-8245-40ab2e12456a
md"""
**Remark.**
The linear relation between redshift and distance can be written in the form

$cz = H_0 d \tag{20.30}$

where the constant ``H_0``, pronounced "H naught," is now called the **Hubble constant**.
As a further tribute to Hubble, the plot of ``cz`` versus ``d`` is called a Hubble diagram, and the equation ``cz = H_0 d`` is called the Hubble law.
"""

# ╔═╡ 294cbafe-b497-4bec-bcec-8b2af02c368c
md"""
**Remark.**
As it turned out, Hubble severely underestimated the distance to nearby galaxies, since his standard candles were actually much more luminous than he thought.
The farthest galaxies in Figure 20.11 are in the Virgo Cluster of galaxies.
Hubble thought they were ``∼ 2 \text{ Mpc}`` away; current distance estimates put the Virgo Cluster at a distance ``d ∼ 16 \text{ Mpc}``.
Thus, although Hubble thought the Hubble constant was ``H_0 ∼ 1000 \text{ km s}^{-1} / 2 \text{ Mpc} ∼ 500 \text{ km s}^{-1} \text{ Mpc}``, the current best estimate of the Hubble constant is much smaller:

$H_0 = 70 ± 5 \text{ km s}^{-1} \text{ Mpc}^{-1}. \tag{20.31}$

After Hubble's erroneously high value of ``H_0`` was discredited, there was a decades-long debate over whether the true value of the Hubble constant was ``H_0 ≈ 50 \text{ km s}^{-1} \text{ Mpc}^{-1}`` or ``100 \text{ km s}^{-1} \text{ Mpc}^{-1}``.
As a relic of that long debate, you sometimes see the Hubble constant written in the form

$H_0 = 100h \text{ km s}^{-1} \text{ Mpc}^{-1}, \tag{20.32}$

where ``0.5 < h < 1``.
Since the value of the Hubble constant is pinned down more accurately now, feel free to substitute ``h = 0.7``.
"""

# ╔═╡ b17df227-8c08-4f0b-934a-0b88f8cc69b2
md"# 21 Active Galaxies"

# ╔═╡ e8449f5b-dd10-4dc9-8e62-5d335538fb7d
md"""
**Remark.**
**Active galaxies** have many distinctive attributes that distinguish them from the "normal" galaxies discussed in the previous chapter.

- As briefly mentioned in Section 20.2, active galaxies produce large amounts of **nonstellar emission**, some of it **nonthermal** in origin, arising from energetic and violent processes.
  Active galaxies produce more radio and X-ray emission than you'd expect if all their light came from the photospheres of stars.

- Active galaxies have much of their light concentrated in a small, central region known as an **active galactic nucleus**, or **AGN**.

- Light from AGNs is **variable** on short timescales at virtually all wavelengths.
  The timescale for significant variability is dependent on both luminosity and wavelength, with the most rapid variability seen at shorter wavelengths in lower-luminosity AGNs.
  In low-luminosity AGNs, X-ray emission can vary on timescales of minutes.

- Some active galactic nuclei have **jets** that are detectable at X-ray, visible, and radio wavelengths.
  The jets contain ionized gas flowing outward at relativistic speeds.

- The ultraviolet, visible, and infrared spectra of AGNs are dominated by strong **emission lines**.

In order to be labeled as an active galaxy, a galaxy need not have every attribute listed above; it's more like a "choose any 3 out of 5" proposition.
Thus, there are many classes of active galaxies, depending on which attributes a particular object displays.
"""

# ╔═╡ 26d51c64-aa5b-4a45-8c36-d0cef96075ca
md"## 21.1 Types of Active Galaxies"

# ╔═╡ 06448374-49ff-4a73-8dea-7704e60c7398
md"""
**Remark.**
We can identify three major classes of active galaxies: Seyfert galaxies, quasars, and radio galaxies.
"""

# ╔═╡ 10eb0327-af53-4d43-9609-bfdee96a8b3d
md"### 21.1.1 Seyfert Galaxies"

# ╔═╡ 713ae17d-6b81-4ea7-a5da-bb7bcde52a05
md"""
**Remark.**
**Seyfert galaxies**, whose unusual properties were first identified by Carl Seyfert in the 1940s, are spiral galaxies with luminous, variable nuclei that have strong emission lines in their spectra.
"""

# ╔═╡ cb9782d6-dd14-4772-b408-b6392580c41b
md"### 21.1.2 Quasars"

# ╔═╡ ee7c8c7d-507d-4b1b-8d35-c61df6d18919
md"""
**Remark.**
Radio telescopes first surveyed the sky in mid-twentieth century.
"""

# ╔═╡ e6ad86a7-b745-4be1-9597-4e6d4362e903
md"### 21.1.3 Radio Galaxies"

# ╔═╡ 6bda1909-5b59-420c-8f76-236785bcda47
md"""
**Remark.**
**Radio galaxies** are defined, simply enough, as galaxies that have strong radio emission.
"""

# ╔═╡ 2cd7b7dd-e13f-49d6-83f4-982f4b162b94
md"## 21.2 Accretion by Supermassive Black Holes"

# ╔═╡ a617c83e-ff14-49bd-a046-bd1626640716
md"### 21.2.1 Energetics"

# ╔═╡ 172f2fba-93ca-42ba-a129-40be536527a9
md"""
**Remark.**
As matter falls toward a black hole, a large amount of energy can, in principle, be extracted from it.
"""

# ╔═╡ 7ec13621-75c7-43aa-9d3f-d8313bf57bde
md"### 21.2.2 The Eddington Limit"

# ╔═╡ bb8f6db2-7a0b-47cf-871e-d6a727c60ddc
md"""
**Remark.**
You might think that by shoveling in matter at higher and higher rates, you can make an AGN have arbitrarily high luminosity.
"""

# ╔═╡ 8228f1d8-97a0-41a9-b7ab-9dcfefa3e3e8
md"### 21.2.3 Accretion Disks"

# ╔═╡ 0431edfa-fb6d-4933-a8e7-121091400eb0
md"""
**Remark.**
As discussed earlier in Section 18.3, infalling gas does not plummet directly through the Schwarzschild radius and into the black hole.
"""

# ╔═╡ 8b005808-c486-4421-a63a-7410322e5d64
md"## 21.3 The Structure of AGNs and Unified Models"

# ╔═╡ ebff72d7-e7c9-463a-9508-ddb28ead2560
md"""
**Remark.**
Seyfert galaxies, BL Lac objects, and radio galaxies seem to be something of a mixed bag, with different morphologies and spectra.
"""

# ╔═╡ 97ea8588-5299-40df-8eac-60456c17d9be
md"## 21.4 Quasars over Cosmic History"

# ╔═╡ 5e2744ac-61a9-456c-807a-1e2b408a23a6
md"""
**Remark.**
Astronomers are fond of the saying "A telescope is a time machine."
"""

# ╔═╡ 5f113c62-246b-4a29-9e21-4e3f6aa8c308
md"## 21.5 Probing the Intergalactic Medium"

# ╔═╡ c8930e0b-9d8f-42b8-87be-e3a392f5e400
md"""
**Remark.**
Quasars are interesting not merely for their own sake, but because they act as probes of the **intergalactic medium**.
"""

# ╔═╡ 098f9db6-95f2-4a28-a7aa-5107368b6924
md"# 22 Clusters and Superclusters"

# ╔═╡ 89a325a5-43fb-462d-bf8d-f4efc3bfd210
md"""
**Remark.**
If the universe is a loaf of raisin bread (a metaphor that we adopted in Section 20.5), then the raisins are not uniformly distributed through the loaf.
"""

# ╔═╡ 1bbdb5be-cfc2-46b4-a0b7-69d64d5fb15c
md"## 22.1 Clusters of Galaxies"

# ╔═╡ 357409e5-bd31-4d3c-958d-23b23ca91a27
md"""
**Remark.**
Groups and clusters are both gravitationally bound aggregations of galaxies, differing only in the number of galaxies that they contain.
"""

# ╔═╡ 320dc1f7-479b-493e-9ebd-1213605629b1
md"## 22.2 When Galaxies Collide!"

# ╔═╡ 55c0ba76-0ac2-41dc-8c8e-66aaa83f6183
md"""
**Remark.**
The novel *When Worlds Collide*, by Wylie and Balmer, is a classic of science fiction.
"""

# ╔═╡ d86e7417-584e-4af4-a447-d405d613252e
md"## 22.3 Superclusters and Voids"

# ╔═╡ 53704f98-ad8d-407a-a2a3-928204a6d926
md"""
**Remark.**
In the hierarchy of structures in our universe, the average density of a star is greater than that of a galaxy.
"""

# ╔═╡ afd30f69-9579-4286-95b7-8f0116ee59b2
md"# 23 Cosmology"

# ╔═╡ 3c163797-bb0c-4d81-bb2e-ebff098f4906
md"""
**Remark.**
Cosmology is the study of the universe, or cosmos, regarded as a whole.
Some questions addressed by cosmologists are What is the universe made of?
Is it finite or infinite in spatial extent?
Did it have a beginning at some time in the past?
Will it come to an end at some time in the future?
"""

# ╔═╡ ff62ffec-eaab-435e-aea8-71a15cb88670
md"""
**Remark.**
In addition to dealing with Very Big Things, cosmology also deals with very small things.
Early in its history, as we'll see later on, the universe was very hot in addition to being very dense, and interesting particle physics phenomena were occurring.
Thus, a brief review of elementary particle physics will be useful as a preface to this chapter.
For most partaicle physics applications, the electron volt ``(1 \text{ eV} = 1.602 \times 10^{-19} \text{ J})`` tends to be an inconveniently small unit of energy.
Thus, particle physicists tend to measure energy in units of ``\text{MeV } (10^6 \text{ eV})``, ``\text{GeV } (10^6 \text{ eV})``, or ``\text{TeV } (10^{12} \text{ eV})``.
"""

# ╔═╡ d63ce2e6-e20d-4499-902a-c977991045a5
md"""
**Remark.**
The most cosmologically important particles are listed in Table 23.1.
The objects that surround us in everyday life are made of protons, neutrons, and electrons.
Protons and neutrons are both examples of **baryons**, where a baryon is defined as a particle made of three quarks.
A proton ``(p)`` contains two "up" quarks, each with a charge ``q = -1/3``.
A neutron ``(n)`` contains one "up" quark and two "down" quarks.
A proton has a mass (or equivalently, a rest energy) that is 0.1% less than that of a neutron.
A free neutron is unstable, decaying into a proton with a decay time of ``τ_n = 940 \text{ s}``, about a quarter of an hour.
"""

# ╔═╡ eec232ef-5cc7-405e-9462-f3a5cf0c0456
md"""
**Remark.**
Electron ``(e^-)`` are examples of **leptons**, a class of elementary particles that are not made of quarks.
The mass of an electron is small comparerd to that of a proton or neutron; the electric charge of an electron is equal in magnitude, but opposite in sign, to that of a proton.
On large scales, the universe seems to be electrically neutral, with equal numbers of protons and electrons.
The component of the universe made of atoms, molecules, and ions is called **baryonic matter**, since only the baryons contribute significantly to the mass density.
"""

# ╔═╡ 066ba0dd-fb59-443b-a51a-3a43db039794
md"""
**Remark.**
Neutrinos ``(ν)`` are also leptons.
Neutrinos have no electric charge and interact with other particles only through the weak nuclear force or gravity.
There are three types, or flavors, of neutrinos: electron neutrinos ``(ν_e)``, muon neutrinos ``(ν_μ)``, and tau neutrinos ``(ν_τ)``.
Although recent experiments indicate that the different neutrino types have different masses, those masses must be small compared to the electron mass, with ``m_ν c^2 < 2 \text{ eV}`` being the approximate upper limit on the rest energy.
"""

# ╔═╡ 7e2441a5-920a-4516-b51f-232f00c0e375
md"""
**Remark.**
A particle known to be massless is the photon ``(γ)``.
Unlike neutrinos, photons interact with electrons, protons, and neutrons.
Although photons are massless, they have an energy ``E = hc / λ``, where ``λ`` is the wavelength.
"""

# ╔═╡ a81816a9-6397-412d-9a2a-3f4de3c81244
md"""
**Remark.**
The most mysterious component of the universe is the dark matter.
As discussed in Section 19.2, some of the dark matter may be baryonic (in the form of brown dwarfs or other dense, dim MACHOs).
Some of the dark matter, but not much, is contributed by the lightweight neutrinos.
It is likely that some of the dark matter is contributed by WIMPs, weakly interacting massive particles that are far more massive than neutrinos.
"""

# ╔═╡ 609c7439-5898-4f62-9f7b-8d100245da38
md"## 23.1 Basic Cosmological Observations"

# ╔═╡ 687f20b4-7e37-4491-810e-72ce471bd74a
md"""
**Remark.**
Observations of the universe around us have led cosmologists to adopt the **Hot Big Bang** model, which states that the universe has expanded from an initial hot and dense state to its current cooler and lower-density state, and that the expansion is continuing today.
However, the first observation on which the Hot Big Bang is based is ancient and requires nothing more sophisticated than your own eyes.
"""

# ╔═╡ a4bb41b3-cc7d-4f43-bf07-97673207184c
md"""
**Remark.**
The first observation underpinning modern cosmology is this: **The night sky is dark.**
When you go outside on a clear night and look upward, you see scattered stars on a dark background.
The fact that the night sky is dark at visible wavelengths, rather than being uniformly bright with starlight, is known as Olber's paradox, after the astronomer Heinrich Olbers, who wrote a paper on the subject in the year 1826.
Olbers was not actually the first person to think about Olber's paradox; as early as 1576, Thomas Digges was worrying in print about the darkness of the night sky.
"""

# ╔═╡ 3dbeaf7d-7698-4c46-bf7f-e787d78af8f6
md"## 23.2 Cosmology à la Newton"

# ╔═╡ 7e06daad-e400-4946-aa95-74af191ada7b
md"""
**Remark.**
Let's compute, using Newton's law of gravity and second law of motion, how the scale factor ``a(t)`` depends on time.
"""

# ╔═╡ a87f746b-6301-4820-b751-5ef611d2d519
md"## 23.3 Cosmology à la Einstein"

# ╔═╡ 4dd90986-3516-432c-b691-9abcd9012a83
md"""
**Remark.**
In Newton's view of the universe, space is static, unchanging, and Euclidean.
"""

# ╔═╡ f5f01e49-7f93-44a9-bc24-145d932a9c2c
md"## 23.4 Metrics of Spacetime"

# ╔═╡ 21f47abb-088e-44f9-981a-87c78971d35d
md"""
**Remark.**
Astronomers study events that are widely spread out in space, and also widely spread out in time.
Thus, it is useful for them to be able to compute the distance between two events in a four-dimensional spacetime.
Computing the distance between two points in a flat, three-dimensional space is easy.
If one point is at ``(x, y, z)`` and the other is at ``(x + dx, y + dy, z + dz)``, the distance ``dℓ`` between them is given by the formula

$dℓ^2 = dx^2 + dy^2 + dz^2. \tag{23.48}$

A formula such as equation (23.48) that gives the distance between two points is known as a **metric**.
Equation (23.48) uses the convention, common among relativists, that ``dℓ^2 = (dℓ)^2``, not ``d(ℓ)^2``; omitting the parentheses reduces visual clutter.
The metric of flat space appears different when different coordinate systems are used.
For instance, in spherical coordinates, the metric of flat space is

$dℓ^2 = dr^2 + r^2(dθ^2 + \sin^2{θ}\,dϕ^2). \tag{23.49}$

By extension, we can compute the four-dimensional spacetime distance between two events, one at ``(t, x, y, z)`` and the other at ``(t + dt, x + dx, y + dy, z + dz)``.
"""

# ╔═╡ b6cb7450-96b9-4e8c-8e19-ab18d30d5bf8
md"""
**Remark.**
In an expanding (or contracting) universe, the metric we use to measure spacetime distances is called the **Robertson--Walker metric**.
If space is flat, then the Robertson--Walker metric takes the form

$dℓ^2 = -c^2 dt^2 + a(t)^2 [dr^2 + r^2 (dθ^2 + \sin^2{θ} \,dϕ^2)]. \tag{23.51}$

Notice how the spatial component of the Robertson--Walker metric is scaled by the square of the scale factor ``a(t)``.
The time variable ``t`` in the Robertson--Walker metric is the **cosmic time**, which is the time measured by an observer who sees the universe expanding uniformly around him or her.
The spatial variables ``(r, θ, ϕ)`` in the Robertson--Walker metric are the **comoving coordinates** of a point in space.
If the expansion of the universe is perfectly homogeneous and isotropic, then the comoving coordinates of any point remain constant with time.
"""

# ╔═╡ 1db41a29-5c9c-443b-a303-490f45650cba
md"""
**Remark.**
Suppose you are observing a distant galaxy and want to know how far away it is.
Since we are in an expanding universe, when we assign a distance ``ℓ`` between two objects (such as an astronomer and a galaxy), we must specify the time ``t`` at which that distance is correct.
For convenience, let's set up a coordinate system in which you are at the origin and the galaxy is at a comoving coordinate position ``(r, θ, ϕ)``, as shown in Figure 23.10.
The **proper distance** ``ℓ_p(t)`` between two points in space is the length of the geodesic between them when the cosmic time is fixed at the value ``t``, and the scale factor is thus fixed at the value ``a(t)``.
The proper distance between an observer and a galaxy in a flat universe can be found by using the Robertson--Walker metric of equation (23.51) at fixed time ``t``:

$dℓ^2 = a(t)^2 [dr^2 + r^2 (dθ^2 + \sin^2{θ} \,dϕ^2)]. \tag{23.52}$

Along the geodesic between the galaxy and observer, the angle ``(θ, ϕ)`` is constant, and thus

$dℓ = a(t) dr. \tag{23.53}$

The proper distance ``ℓ_p(t)`` is found by integrating over the radial comoving coordinate ``r``:

$ℓ_p(t) = a(t) ∫_0^r dr = a(t) r. \tag{23.54}$

The normalization ``a(t_0) = 1`` for the scale factor means that the comoving coordinate ``r`` is simply the current proper distance to the galaxy: ``r = ℓ_p(t_0)``.
"""

# ╔═╡ 4280ec57-8843-40e9-bf73-3fa36ead96ba
md"## 23.5 The Friedmann Equation"

# ╔═╡ 766f97b9-cc34-4012-8fe9-55eb952b14f5
md"""
**Remark.**
In the context of general relativity, the form of ``a(t)`` as well as the curvature constant ``κ`` and radius of curvature ``r_{c,0}`` are dictated by Einstein's field equations.
In general relativity, the field equations linik the curvature of spacetime at any point to the energy density and pressure at that point.
The equation that links ``a(t)``, ``κ``, and ``r_{c,0}`` is the **Friedmann equation**.
We have already seen the Newtonian version of the Friedmann equation; it's the energy conservation equation for the expanding sphere (equation 23.32):

$\left(\frac{\dot{a}}{a}\right)^2 = \frac{8πG}{3} ρ(t) + \frac{2k}{r_0^2} \frac{1}{a(t)^2}. \tag{23.67}$

The relativistically correct form of the Friedmann equation is

$\left(\frac{\dot{a}}{a}\right)^2 = \frac{8πG}{3c^2} u(t) - \frac{κc^2}{r_{c,0}^2} \frac{1}{a(t)^2} + \frac{\Lambda}{3}. \tag{23.68}$

Equation (23.68) is offered without proof.
(A derivation should be done only by a highly trained relativist; please don't try this at home!)
"""

# ╔═╡ 55296b86-84ec-4847-81f8-284bb0ae12db
md"# 24 History of the Universe"

# ╔═╡ b5c37130-d0c6-4d61-b1ab-db70e3ce5ec3
md"""
**Remark.**
Knowing how the scale  factor ``a(t)`` grew in the past and predicting how it will change in the future is an important goal of cosmologists.
The Friedmann equation tells us that the growth of the scale factor is related to the energy density of the universe.
It is useful to divide the energy content into radiation (relativistic particles), matter (nonrelativistic particles), and a cosmological constant.
This is because each of these components has an energy density with a different dependence on the scale factor.
"""

# ╔═╡ ebbab1a1-02cd-4373-9065-b8ef18399db1
md"""
**Remark.**
A cosmological constant has an energy density ``u_\Lambda`` that is constant with time.
To see how the energy density of radiation and matter behaves as the universe expands, consider a volume ``V`` that expands with the universe, so that ``V(t) ∝ a(t)^3``.
If particles are neither created nor destroyed, then the number density of particles, ``n``, is dilutede by the expansion of the universe at the rate ``n(t) ∝ V(t)^{-1} ∝ a(t)^{-3}``, as illustrated in Figure 24.1.
The energy of the nonrelativistic particles is contributed entirely by their rest mass, ``ε = mc^2``, which remains constant as the universe expands.
Thus, for nonrelativistic particles, a.k.a. "matter," the energy density has the dependence

$u_m(t) = n(t) ε = n(t) mc^2 ∝ a(t)^{-3}. \tag{24.1}$

The energy of relativistic particles, such as photons, has the dependence ``ε = hc / λ(t) ∝ a(t)^{-1}``.
Thus, for relativistic particles, a.k.a. "radiation," the energy density has the dependence

$u_r(t) = n(t) ε(t) = n(t) hc / λ(t) ∝ a(t)^{-4}. \tag{24.2}$

Given the different rates of decrease for the energy density, we find that the total energy density ``u`` was contributed mainly by radiation at early times, when ``a ≪ 1`` (Figure 24.2).
In the language of cosmologists, the early universe was "radiation dominated."
If the universe has a positive cosmological constant ``\Lambda``, then it becomes "lambda dominated" if it reaches a sufficiently large scale factor.
"""

# ╔═╡ 91801386-fecb-4e2b-a85b-76abb1f9c322
md"## 24.1 The Consensus Model"

# ╔═╡ 26f74b37-95f2-4abc-b9ad-cd1f24b64f3d
md"""
**Remark.**
In recent years, cosmologists (ordinarily a contentious bunch) have found themselves approaching an approximate consensus on the curvature, contents, and age of the universe.
"""

# ╔═╡ 0b4719bc-4da9-40a1-9f00-8495576154f0
md"## 24.2 The Accelerating Universe"

# ╔═╡ bc058fa5-ff76-4d47-98bb-f38d125bbfc5
md"""
**Remark.**
The Friedmann equation for the Consensus Model can be written in the form

$ȧ = H_0 \left[\frac{\Omega_{r,0}}{a^2} + \frac{\Omega_{m,0}}{a} + \Omega_{\Lambda, 0} a^2\right]^{1/2}. \tag{24.35}$
"""

# ╔═╡ 27dee0cf-649b-4317-81d6-aa49f72229ec
md"## 24.3 The Early Universe"

# ╔═╡ 9a7fffbc-142a-487b-a887-084a12a393a2
md"""
**Remark.**
To understand the origins of the universe, we want to look as far back in time as possible.
"""

# ╔═╡ 1d1073e7-870d-435e-a0b1-e17fbf29588a
md"## 24.4 The Very Early Universe"

# ╔═╡ 49c617c1-fac3-4eff-b220-b8c29a82aeed
md"""
**Remark.**
So far we have accentuated the positive when discussing the Hot Big Bang universe in general, and the Consensus Model in particualr.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.49"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "08cc58b1fbde73292d848136b97991797e6c5429"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "b64719e8b4504983c7fca6cc9db3ebc8acc2a4d6"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "eadad7b14cf046de6eb41f13c9275e5aa2711ab6"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.49"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SnoopPrecompile]]
git-tree-sha1 = "f604441450a3c0569830946e5b33b78c928e1a85"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.1"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.URIs]]
git-tree-sha1 = "ac00576f90d8a259f2c9d823e91d1de3fd44d348"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─e9a2ffe8-63db-42d9-91e1-81cc6f7a5109
# ╟─2858db82-2319-11ed-121f-eb28ec271269
# ╟─ce1b613c-4713-4c56-a490-177220e266bf
# ╟─2b1c3844-4d7d-412e-b472-35c6efc8e352
# ╟─80016082-4076-40b2-a23e-df85721ceb8d
# ╟─f12a6397-8954-4227-8dcd-28db168e7b04
# ╟─67931c23-82d0-4293-8b52-6c3e86894a0b
# ╟─8075512c-3e30-4242-86d1-50f9cf5a04f9
# ╟─ea7b0a4c-4ac2-41c6-9aa1-fe171ec08240
# ╟─215217ae-d0c3-4349-9c20-6aa8ef276836
# ╟─17cf7bf6-6065-46d3-ba21-e1f4f4712254
# ╟─98a6c6b1-45ef-48b1-9f30-c88d321fff6a
# ╟─4d81618a-b05f-4657-8568-69a47be558b1
# ╟─b440a70f-7faa-4d2e-8d41-3b693b77b862
# ╟─5482108f-d280-45d0-9f34-660ff3b1cdb8
# ╟─ae7f8a3f-e39f-421d-a0af-c63c23a7b141
# ╟─f463d353-60e0-40b2-811c-d50b54c3bbc2
# ╟─a186d2b2-eba3-4b1b-9f6f-174e37592818
# ╟─620d2f6e-5775-4424-af25-240facd2c3ff
# ╟─1a60d66f-e912-45f3-bb8a-2367ad42f38b
# ╟─9330e369-dc72-4f85-87b8-0f1a6334ab1e
# ╟─40136d36-028d-4868-97a1-05c41d3c311c
# ╟─14397061-2e18-4610-a960-922d29951e29
# ╟─cc045f26-e7bd-4087-90ca-fc81899a894e
# ╟─f6ce5834-d562-4e84-b489-17cb56e3761c
# ╟─3849e67e-1cb0-4f3a-a165-6cee3aeaf38b
# ╟─be66bc34-5c73-42c9-aa1d-87805cc94c98
# ╟─4c79f385-e6c1-4180-8437-9fe57cf28358
# ╟─d0fd7228-d77c-4bca-8378-70780ba5a742
# ╟─fc10c263-8607-420e-a393-96f73ec7509a
# ╟─17465f84-7c65-4053-8370-d3def7a5263f
# ╟─f2043c62-14bd-4666-9ff0-f8f82f907670
# ╟─b1422c60-582c-4ec3-ba8d-218738675ede
# ╟─d41bb1d9-5085-4a2f-80ad-e66ab486f835
# ╟─f847c186-b949-4760-860d-035ff9e7a0ef
# ╟─df88331b-2521-4bef-a290-554c92ef7888
# ╟─d153c413-eb70-4d63-babb-00ae89edefdb
# ╟─78f6ea3a-98f1-4b7d-aa6b-9e267227fffc
# ╟─830a37fc-3eed-4c23-b7e3-9d3928b8938f
# ╟─b8fa57a1-0be2-498e-92b8-c881360353f1
# ╟─b39622a8-9240-4b6b-a144-8b1bbadeef15
# ╟─5a52cb48-e8c6-4d12-8c25-470bb235c410
# ╟─125dcbf3-eab5-4a44-8b68-f7d1517dd5e7
# ╟─c1d28c59-4667-4399-955f-6dcf194fae2c
# ╟─075aa569-b808-4c68-b342-3663d408bb30
# ╟─bfb22ba4-3407-4d1c-aa08-12001e031592
# ╟─bbe2d553-51db-4439-be48-f3493a2a2b76
# ╟─ff2fe371-8f9a-42ed-98fd-a833c6d7cceb
# ╟─e4ab8493-d444-4b60-9dfa-f2b06d4a64e4
# ╟─d56616b1-ead8-4bfe-a536-5d2f4829a059
# ╟─b4e4780f-343b-4301-8020-989f14204cfe
# ╟─2f3b6a6d-34f6-4211-9463-725a0443d964
# ╟─ab0a7442-7566-476b-afbe-9758b3bb22da
# ╟─cd9b0fb4-9e3c-4e98-9168-fc8da93ac684
# ╟─8a676988-8231-4814-9989-5a1180439d33
# ╟─fb389a97-7da9-4a72-a57b-06b110d886b8
# ╟─9612b7f7-de01-4adb-bfc9-e9d9fe2bc9e3
# ╟─613b596f-fd94-4713-8e98-3c7461f7cb2f
# ╟─e44589de-1d48-424d-b9b7-970d38d2bd97
# ╟─5155536b-ea92-4671-96c7-b6b98c47eebc
# ╟─95dbc9ba-5070-4de5-8d9c-2d64831387b7
# ╟─ac2d60aa-c43e-4ad6-8408-01a7f95b064f
# ╟─11e313b0-20e0-49ee-b579-499a7ff44668
# ╟─36eac608-881f-4480-8a0c-ba4db26a3062
# ╟─05e8f6fa-497f-49e0-8d2e-8133c0df871a
# ╟─bcfbe0ce-2d9d-4b6a-a939-a7fc3e4da936
# ╟─0b680772-f5ac-4795-b971-567ae8b33962
# ╟─1d22441f-55e3-4035-9e14-3a3aef9d1293
# ╟─3015d465-7003-408b-a3bf-2bf8fba92f43
# ╟─65c0e2ef-6907-4c7e-ba06-9a44d9a6b144
# ╟─f36549b2-8ec6-4815-8a87-0a2fecd9a4d0
# ╟─5982c702-32e2-4e2b-9f9a-fdc0e0ed29d0
# ╟─f9454bfd-955e-4f65-a540-a86dbf3d5cfc
# ╟─3b85a6f3-95fb-4b87-a078-ce36d861bc87
# ╟─42ddd525-d6a8-464d-aa94-54af224e60be
# ╟─77f01486-8f08-4112-8f0d-602c578f8e96
# ╟─91d7ed6d-cbf0-489d-bda9-9723c2d33bd5
# ╟─9d2181f3-6336-45f9-ab6d-c20386026eb0
# ╟─5ca631d1-d8c1-471f-8cf3-6c0f2452c9a5
# ╟─eb489b70-b73f-41bd-820f-ee7744b7a183
# ╟─6f036974-a7cd-45b8-ada8-44aaf424633b
# ╟─3141c0ba-f547-4dde-bec5-cd4eedf9dcba
# ╟─9c6b54a9-b788-463b-bc22-33c9a1f01f7f
# ╟─6ca3bb19-9691-4f59-8d6f-ee61335dc0a4
# ╟─fb533d27-94c5-4920-b395-a7361008bcde
# ╟─a3ca6c74-448e-4341-8916-c12fcbcac8f4
# ╟─faec58b4-1a08-4da5-9958-882f8a678527
# ╟─288486fc-b047-44d1-9073-180f95e3f6b2
# ╟─0e7fa250-4632-4dd2-a5d0-238b9a2de204
# ╟─9904e07a-1716-419c-8ba4-8f3480caa985
# ╟─0eaa5072-472d-44f4-91ba-33e99e090f25
# ╟─5fb59ee4-0f06-476d-bcf2-528bf17bfca8
# ╟─1ff4bcf1-22eb-41b6-9bac-3ef8ecc28ce9
# ╟─a3ec733b-5414-4f16-a384-63a687bf0f4a
# ╟─583683d9-c773-4a3e-888d-d44320a733a8
# ╟─619f4528-523f-45b2-862f-a9f5d6ea7505
# ╟─a1722c6e-4702-49cc-a0b9-0ff5a0f370cf
# ╟─4f4086b6-50ae-478a-9086-e48ed7ef2337
# ╟─8be72844-01f1-4400-8b8e-313d95763204
# ╟─cb2cb5c5-097e-48d0-9dc4-6aba3c79ba96
# ╟─e6985515-0d68-4f68-a7b7-8ff7562efb79
# ╟─735c6c96-5701-473c-8eb9-af8cf825a534
# ╟─f7a7c5f8-45ae-45a2-bfd2-8cc811ea0ea1
# ╟─0f351457-99d4-4fed-ae62-80f284408da5
# ╟─feefde57-d98f-467a-8396-ec7688be50e9
# ╟─9426002b-1357-45b6-afef-3849e2a04e0a
# ╟─795080d4-f256-4fd4-980a-e8f04321a7f5
# ╟─b5d30d8e-de93-49fb-98ef-e29285d49fbd
# ╟─740531b0-6b9f-437a-b84f-450630640646
# ╟─bb91d852-a235-43ca-abe9-117e97e2c3d2
# ╟─0dd17259-555b-4512-810e-12c4cf8f666d
# ╟─feb0fb51-a2e2-4124-860f-8c08d157d24c
# ╟─b0517cbe-6a93-483d-9fbe-519531bfc5c8
# ╟─73283d0a-030a-4503-88a9-35d964ce69d4
# ╟─43cce8b1-e118-467c-bbc3-780276fe26bf
# ╟─46ffbc15-80a4-4a86-9c76-ef37a03bd79c
# ╟─100e29d9-994b-454b-b74b-da92980f55e5
# ╟─7f457a71-fa65-46c8-9afe-09d7258ede91
# ╟─83dc7c7a-a1d1-4ed8-a0ae-cf508158d86d
# ╟─8d30fb1f-a390-476f-a163-662cef8f6735
# ╟─03a9e380-7f88-4406-947c-f1a251d23c80
# ╟─88cef74e-74ff-47e9-8a45-4af872e9174e
# ╟─baeb4fed-937a-4f86-bf76-b6d1f00b60bf
# ╟─d4e2dd94-16f7-4c74-bb79-1d294208ce31
# ╟─a0bb8cb0-b40e-463a-9cb5-6b09a890021c
# ╟─e3c7382d-5527-4a2f-9dd6-d00410d54172
# ╟─3a35b99c-d19a-4236-a68d-0300dbfa8165
# ╟─63284f62-b332-4810-af97-b308b34fc334
# ╟─3a74d4ca-af65-4592-b755-a2bff038ad0b
# ╟─ee9a4335-9d6b-4c34-b4dd-0e86a584a9da
# ╟─a9e52974-125b-4763-895d-5bf4cd9cc21a
# ╟─b8329e68-f11d-49ca-9df0-f13bf1c6dcd3
# ╟─0157bdab-32f4-4f0b-95df-0e0745ba829f
# ╟─6c819765-1838-4064-9e6f-cb92500bc7f9
# ╟─6e8dd305-2e16-4c1f-97cc-52d14c443352
# ╟─3761d7e0-1072-4b09-bcc1-2ef7e3c801f3
# ╟─249db0be-0d37-4293-a0e6-27e0b4732727
# ╟─e0312c7d-79c2-451f-ac43-11fcd9605049
# ╟─75998b1d-e9ab-4c7b-b7c6-ca0b2040a42c
# ╟─d7625185-3e3f-4595-bf6b-990dc12a3af7
# ╟─c82cea1d-456e-4c4c-9f7a-5207f9f01e68
# ╟─6a505fb9-9649-4080-bce1-2fa098155f7b
# ╟─8347bcb0-7897-49da-9038-7f91dfacb108
# ╟─76c0497c-c100-47fb-9aa7-840b5d164d46
# ╟─85bfbc28-dcbb-422c-bf0a-741f1f0b89bc
# ╟─16e38309-52cf-4c44-9e6c-56f0a1fcc6df
# ╟─afbae2fc-8a96-4f16-ab81-1a0525a5a183
# ╟─e8029205-c22c-482e-9b85-40a61ed39fd4
# ╟─285476e8-e73c-4058-a128-e5713ced68f9
# ╟─879cb334-590a-4421-9b8a-01c7988d0e5e
# ╟─d28b43b7-4d8a-4052-a8b8-ac87194a8b55
# ╟─eba3aa58-08af-485c-a9e6-e6af8be0266d
# ╟─1e9be21b-67f8-46ae-9c73-e9dcee8b5315
# ╟─de326274-5613-478e-904a-4163ca563678
# ╟─c96715ce-81d6-40de-be58-9e9fbde6fcf3
# ╟─eb260ee8-f62e-4080-b2f3-2ec622822ffe
# ╟─56e5f927-7deb-4a7b-858d-6110d176ad9a
# ╟─4fa54764-c4bc-4bf2-887f-c19081c4f10d
# ╟─49c15c89-76ba-4b6c-bd45-69988ab74008
# ╟─0fabea65-39f8-4e9b-ae73-5f397598be58
# ╟─d62e1bda-8de5-4738-bfd9-b6ec444fa085
# ╟─40362fdc-0978-4cc8-b3dd-7f1eb1a2fb3f
# ╟─c24e586b-b6ec-41dd-b832-1dc07a73f5b0
# ╟─81dda22a-d0a6-4df6-a65a-3e67587ea656
# ╟─10b2649a-4b3d-4fef-b468-f339bd6c5a24
# ╟─b14e34d9-1c70-4c52-90b6-5d905cd7a148
# ╟─c6bd48fc-0cb4-4f74-8bbd-6ca901d311fa
# ╟─ceac35a5-5b17-4331-a5d9-c7d8ea3fc83f
# ╟─fd49d33c-85cd-4a0b-996c-44daeed2ffa8
# ╟─f4073596-1f4c-424e-a6f5-191b70772185
# ╟─6d507cc4-c345-4e3e-9385-8a69986cb62d
# ╟─8e35545d-563b-40bd-9f6b-cf98dac8e8d4
# ╟─cecbeffc-b715-4ba8-8496-173acb410ff0
# ╟─f506af67-684e-49f3-8273-c70e81432e4f
# ╟─c3a098e6-063b-4797-8c83-983a65864fda
# ╟─06422f7a-877b-4a58-8154-ade3744d035d
# ╟─115059f4-d543-4d86-ae5c-72e8a4a5da11
# ╟─afe47a91-14ae-452d-a96e-e6baa69b20d0
# ╟─cf73af15-c87f-45dd-823b-335b3abd02ef
# ╟─9f9a6a18-49b6-49ae-98ce-ebe90a3b898d
# ╟─56967c26-2347-477c-9872-43a043625638
# ╟─76bfeba7-774c-425c-a90e-3b51b04a3d38
# ╟─cc45ec0c-dfb5-4c24-8ced-7ef753f97d1a
# ╟─d51a586f-ba72-43e0-8371-ce6793cce732
# ╟─d2e89c13-ae15-4802-9145-21641f07082a
# ╟─88a823ed-07a9-4821-b3b6-fd8673f80c40
# ╟─128b6be0-92ad-4779-a5d6-1847c928e1bc
# ╟─908cca02-2887-431e-833e-70b03cd4c64e
# ╟─7b9f789d-baf5-4341-ad61-0a7235c9358c
# ╟─5e29bc9b-89aa-46d4-a908-737a6992a243
# ╟─77ce8ffc-99ca-425b-9f11-b544ffcb1b51
# ╟─92047926-8209-41ed-9e2a-439fa0045b2a
# ╟─950806ac-d6de-4139-b4a1-a6b8ba474191
# ╟─89a57170-0d8e-4571-bf89-95ac4032c4b1
# ╟─2aace7b2-d3ec-4ad1-9e4d-00be9e2c6d41
# ╟─31550d4c-c153-41ac-995b-cd2fafafcc8f
# ╟─1a0725fd-8e56-42f2-a5da-05f169e682ee
# ╟─ace32ab2-d056-47aa-9562-7f7fb8f9467e
# ╟─da872c9e-ffaf-4b77-b18f-ef05dac7733d
# ╟─343b1bae-3024-4aca-b55b-7ae9447796ff
# ╟─3daf7792-845a-416a-ac31-e76c8536a664
# ╟─fd39301d-ce10-4094-a8f9-bca9418bf2cf
# ╟─bfd7e829-d316-4724-b51c-78c103306d7e
# ╟─834555f2-5aa6-4751-957e-4c16de860d28
# ╟─13b41367-1ff5-41bf-a30d-342a1941436e
# ╟─018269c7-a477-4e97-b7f6-afabd92e0484
# ╟─b3041819-f5bf-4026-a4bc-8757e4eb2f05
# ╟─ee686ec7-d392-4b98-879c-6f546d7c4245
# ╟─31dfab13-6b04-4bd3-935d-2a8963010f4b
# ╟─c08da5b2-dc6f-48ff-8fe0-38b150032686
# ╟─0939d118-282c-4252-92d5-ec388d60146d
# ╟─82048a8b-9d86-41f5-a7e0-41c19275ab61
# ╟─5175dfe4-57c1-4de5-b103-527975c07d17
# ╟─7c9b3b8a-6cf8-4e65-8fdb-ffb36248b903
# ╟─6c10333b-83fd-4c0e-8abc-7bb1f839b137
# ╟─2f0a072a-3645-4c02-9c19-00d676e75998
# ╟─6351141b-59fb-4101-ace2-f528bacb1f50
# ╟─c301ac4f-ddb1-4172-9c8b-8d451ca52fd5
# ╟─84488a9d-a5ed-4081-921c-f6058c5f38c2
# ╟─4d5df495-3eaf-48c9-ba02-15ba6ae8646d
# ╟─133ec813-228b-40bc-b761-e032c192b251
# ╟─fbc5c17b-91ce-4d9a-bbe2-ee3446bab517
# ╟─784254ac-4dae-4575-8d92-5101a3750547
# ╟─f4666bc8-21ea-41fc-9a39-2aa17e961bb3
# ╟─2b04f14d-2d38-4587-83b6-507fd7102377
# ╟─da95eaf6-d3d5-4cdf-9849-2f2831c0dfff
# ╟─5adc5ac1-1d84-4b43-b895-74d57a7decad
# ╟─1f645a7f-03d3-4f56-939f-88b6bb0535e4
# ╟─bd1f7edf-dad3-4afd-aa8c-f01cbc686b9e
# ╟─31e0f842-8ba7-452e-a6f3-809ea89aacde
# ╟─bb246e16-2ec8-4d31-ae96-0d97b21fe0b0
# ╟─7fb0742a-07f9-4393-ab72-9eb6e04fc5de
# ╟─1e3e93b1-1e85-4a30-adb5-19c3492ae899
# ╟─08e906bd-863a-4bfb-9372-018756675553
# ╟─5544b2b4-38b1-4c11-8db2-d2a57ac6ec05
# ╟─de5d52ac-0c68-4acf-9e26-8c68b7be6e06
# ╟─d30ebff4-bdbd-49ea-bc3a-24aae0c18544
# ╟─b1565def-3921-41ec-b485-dd5ab76d81a1
# ╟─97e0e4fe-a9b1-4359-9fff-be60d2508b5b
# ╟─08cc6f1f-59c1-42e1-b387-f6f2ece82f18
# ╟─02fa4113-1c8b-4ce0-bd13-2e02df64ee76
# ╟─ff86c6a8-e97d-4257-a317-a41bcfc5ba0f
# ╟─fdf2eabf-6eb0-454f-99e2-dae256794a76
# ╟─a0c4d75c-f676-4747-a145-3ebe1301d078
# ╟─63d0abf2-97ff-46b6-8324-dc1cb1dfb97d
# ╟─dfe59bae-4529-4b92-b414-00f746f47a1c
# ╟─4d623612-dbef-4ff7-a3d2-a08f5916c779
# ╟─311125e9-9c98-4922-9380-a5d589cdf6cc
# ╟─362dd106-1674-40dc-b4ff-f5cb60dac30a
# ╟─179a9246-00d1-4af0-bd23-d2ddb39edc3b
# ╟─88d4190d-fa0f-44c1-a192-ae1a14c85d48
# ╟─f7e332e6-cec0-43ee-9285-941e80f9b72a
# ╟─00aa07f9-9850-4f13-b32a-5de4023bcb22
# ╟─25295fdf-544f-4256-a734-d50f59b381eb
# ╟─f1af37e8-ff00-496d-a21d-5125dbf86692
# ╟─8deed918-b45e-4286-9955-3f4c0b61fedd
# ╟─c20e1a79-0f6d-4007-95b1-5a308e53b6bc
# ╟─74b6d207-304a-4108-a1b7-79d5671e19d2
# ╟─5dc13013-890c-4733-99b6-c751de2c437d
# ╟─595f0a7b-1a8e-4211-a678-31941240a067
# ╟─1a59b87d-d4cc-4682-9cfe-656fc0e03a41
# ╟─bfb7ee81-998d-488a-a5c1-4921cad05192
# ╟─a219c60c-fea2-41ee-b696-d644df27c529
# ╟─e8cb77a6-3128-4fd4-a0a5-77eeef0e3e37
# ╟─ea135f9f-e782-4721-b10d-5d1472f28ec2
# ╟─bb2d77e5-2dff-4244-8e0a-44630d43614f
# ╟─3d0b2b09-2ab7-4316-89ca-fbbed0807f3d
# ╟─ae33c986-627c-4684-833b-88ef8ab211e7
# ╟─71e99570-17c4-49cb-ad86-beb3495cd389
# ╟─aa04185f-e2ba-4d06-8057-fce70fd8c067
# ╟─4cbc13f3-fef4-4725-b663-f683ed0744b1
# ╟─416f2c61-b2e5-43ec-bb6f-0fd7435132d2
# ╟─d7c79e3e-424d-4a7d-9cb2-7f4a1af19b15
# ╟─0007c9a2-89c6-442a-a026-0f249f1390b3
# ╟─0e84740b-748e-41bc-9d4d-cf0bfb401f30
# ╟─1ece6c1a-fc25-462c-a80a-0cdc5c4d99af
# ╟─dcfc35c9-b404-4581-a517-6275e82a9760
# ╟─ef836db6-9b4e-45dd-b7d6-db6664a4d0dc
# ╟─d6f49bdb-ce18-497d-8384-742667f29d70
# ╟─1a078de0-7148-4bcb-9fe2-e75fe28b22e4
# ╟─82f2bad8-bddb-4eaa-90f5-ac4d135d097e
# ╟─ec8505a5-83f5-43aa-a7e7-f8fb7b0da1a1
# ╟─18e73052-b3be-408b-8eeb-16cd750bd0d4
# ╟─90d5585a-7ad1-4989-b021-ae18372fde7f
# ╟─43631ee1-77a1-4cdb-acbc-54197e5dfdd9
# ╟─06398cfc-bc17-40b2-81b4-59e9c6a7de0e
# ╟─94a5d183-b394-49f6-ba48-a54f484f3ecb
# ╟─cc73a223-14fa-4d80-ac4e-598166b56a61
# ╟─ba3a3c3a-b019-40ad-af0b-d31fc22784b6
# ╟─4f292e61-4ccf-45e8-ae5b-c714491492c7
# ╟─abaa0cbc-5ceb-4ab1-8c43-d27e5e517cb6
# ╟─edd36c6e-8981-4c53-870f-cd9ba46e11f4
# ╟─decd0156-994f-416a-b6ca-a6855bf33db7
# ╟─2e53d259-99fb-4089-a6d2-660e120f0924
# ╟─ad4ea173-27e1-4120-94a6-e306534afc86
# ╟─cd48063d-36ab-42c1-9323-c7d7f8e61dcd
# ╟─ca1d0f3c-d3c1-489e-b85d-2bbf5cc279ba
# ╟─4572b741-6ee9-47ff-927b-50fa8b2ecb47
# ╟─d6030c4d-00fd-479a-aa7d-7940d9f4ca04
# ╟─e42ce597-2dc7-4272-a30e-7d20d85369c9
# ╟─95f765a1-82d4-4297-ade1-98d69bffe7ae
# ╟─854a95de-8ba1-4bba-b009-4c3f63c44344
# ╟─3ee02898-9fe3-4cb2-bcb6-2f1a06987ba4
# ╟─034815ec-86fb-4f09-aab6-447bc0485e70
# ╟─1e119b62-93bb-4d4f-8217-3ff163ecd348
# ╟─2627e730-89e0-4601-81dd-51a786547964
# ╟─289f9036-a2a3-4e3d-815a-7edf28bf246b
# ╟─e0f462ea-e854-49e8-a03f-ccd3b2649a36
# ╟─1f0c1eca-9a5f-479f-a688-175a7e2bc21c
# ╟─f3d85558-1319-4ad2-8160-47c9e4abe583
# ╟─7be5ae38-c16d-47f2-9f32-68a2dc533164
# ╟─d0d89cea-9914-4512-aaca-a33d4c82202c
# ╟─fb5df85c-4a8a-4be8-bcd0-156004b9f132
# ╟─7ef7e1da-5d4e-4b5f-938d-a6b864829c58
# ╟─168258e3-8066-4c4b-bd92-0a88ea5d6efa
# ╟─4bca8e8c-2cec-45fb-b042-f9ec83b305f6
# ╟─8396a98f-c95e-4c7b-b881-6735725c069d
# ╟─f1251273-0499-4568-b6c5-37cfe0fbba1e
# ╟─173607da-b2a3-41af-b929-ae4a73ec8142
# ╟─5c96f874-a25c-4aaf-a369-9c5935033f2e
# ╟─c159252e-c50a-418f-83bd-8a4053d813c8
# ╟─59764141-cac8-4e33-bcf5-9ca3a999576b
# ╟─254505c1-0f38-4cec-9919-21c4a6c6aa97
# ╟─ff0b1bf0-6d53-4aaa-aeee-b24b0aad4d0a
# ╟─efa05e66-b6fb-4dc3-8f9c-0eec1250a59c
# ╟─6437c971-603b-4deb-86bb-5d41a59a0ca7
# ╟─d908f92e-73d1-4eb1-86bd-2af65111d5bc
# ╟─d8a6e074-f331-4b40-8447-9bf4ca507939
# ╟─f4dcebf7-b1cf-44f7-bb0f-16b4c2b407af
# ╟─66820f96-ff44-42b6-a9fa-8ac849bd6d7f
# ╟─5fefdf4e-c256-4b22-9685-fa600c9efcf6
# ╟─ed7b232e-c8b9-4cb7-8b99-3ea780d1b301
# ╟─e98c5ce6-3d64-49fd-817c-39591bd0714e
# ╟─9df51017-ff6d-48d3-a455-72445ca8c52a
# ╟─a72131df-bbe7-406b-9df4-dc6489aa2ccd
# ╟─55c157c8-afd1-41d9-879f-1e098137da1f
# ╟─8d5244fc-f3a8-494e-9cc9-213fd66594c6
# ╟─4744bdac-06c5-4e50-8806-4edcfc506a3f
# ╟─c480387e-2066-4a7d-a238-8e99c717a099
# ╟─2336663b-c2c3-4145-8f50-9d5d759e10d5
# ╟─c9760224-2d0f-4baa-9192-131af8a79933
# ╟─71abde62-c2a6-4d13-a814-f4b83cb8241b
# ╟─c2f660da-c4fb-4c76-81c7-1dbcacd80a6d
# ╟─ff096419-4627-44c2-9581-21a1febe147d
# ╟─ba9635bf-03b1-4970-8464-3e645412d51a
# ╟─f223e879-7c03-42fc-ab69-1e3e864b122c
# ╟─a0426e37-2462-4d37-81eb-848419f87e47
# ╟─abaefd39-5cf9-4b36-9110-a5eb7a337a96
# ╟─c41ae059-23e2-4f91-915e-6a5681d3425b
# ╟─3976eae4-c77e-4d21-bf85-22cecc6f784a
# ╟─becf7e2d-5cfb-46d9-9c59-2a989cd5c3cf
# ╟─30010609-d31d-4f19-9577-a75430e0b3f9
# ╟─44da4fb0-780e-4549-a23f-e79c8e30ad15
# ╟─9e3b50a7-1b38-42c0-9c44-adae0b1986e1
# ╟─b5de78a5-a768-4a7f-b70c-d197657b9c77
# ╟─dae411a6-03d0-4620-bb5f-34609df3aad8
# ╟─fb10aedf-ea56-49da-a01e-db221ddc6119
# ╟─8dac0e91-7f60-40c5-8281-5a2f7a38631b
# ╟─b83d9f20-3653-4493-979b-dd5f9b3385ef
# ╟─b8aa03ab-bb8c-401f-8df2-b1c49670b255
# ╟─c5d4fc74-0b8c-4668-9f68-7f2f30264d74
# ╟─838b4433-afa3-4af8-ba3e-855d7767a7bf
# ╟─e67ed33b-d41d-497e-82e1-d8562f6db03c
# ╟─5c64061c-b7bc-46a5-a4f3-25e7990000c8
# ╟─8939c2ed-c030-4f13-a2d4-e2dd15be7ff2
# ╟─f65d9676-e998-4080-8e00-1f32290e01a4
# ╟─f5add47f-1d8d-4d93-8d5b-0e5940b304ca
# ╟─ae7a9c85-cd01-4d2b-8a72-40924de81cba
# ╟─90fbc24d-d4f4-4def-81ff-621c4258ba0b
# ╟─521fffc3-e32b-44ee-b4de-3a3e63c79fb4
# ╟─43f70007-3746-4bef-8139-02d2449bda81
# ╟─2fc588b3-125a-4a04-a8a7-78aa2c058978
# ╟─6c45d267-b790-420e-9e47-82314fc70c13
# ╟─c9d242fd-b949-4f6b-b31b-16dd46f27e25
# ╟─a6562ff8-5e75-4757-83ad-41ffd02f7990
# ╟─e842e61b-0f9f-49cc-a5a9-f8942cf6440e
# ╟─be6290f2-a81a-4232-8c90-ea1110450db2
# ╟─a5e3efb5-369c-4722-a135-5eb273e908eb
# ╟─0f4bac16-49cc-4098-b9dd-d225e86b18c1
# ╟─d9b71bed-d860-47f1-b8d6-758e80213510
# ╟─4a53c62c-0b9b-4e49-b3bc-5481563d4580
# ╟─b9c537a6-9367-4a71-9219-861963202ca8
# ╟─8d387630-3eb1-4b2d-8f83-8009b5050e54
# ╟─869a1367-2c2f-4274-90bc-fad8cdeb6dba
# ╟─2da7b5e4-f165-4aa6-a2e3-6182ed4d6dfe
# ╟─85b66057-391f-43ea-bc5e-0e94b0624b8d
# ╟─5d2d3258-1915-4696-9d90-371ee513da8e
# ╟─5945d8e6-33be-49a7-852a-d8ec94d7080c
# ╟─998681d6-dbab-4ae1-9461-7574c9caa070
# ╟─c5eeaf37-a52c-4bfe-8284-69c070a8bbe1
# ╟─976a6b1e-15f5-4f53-9db8-08541b00b2b1
# ╟─356ac202-0520-48b5-ac58-327e4535c265
# ╟─bf93500c-98e7-40b9-b196-a1744e25e038
# ╟─567128fc-e72a-4eb3-b3f8-5b4eb7be779d
# ╟─e3641159-2204-462e-9a13-4b53508a963d
# ╟─d133c6be-ba17-463d-a65b-07e7ae80dad3
# ╟─b00eaa97-a3bb-4afb-97e5-480aa9fa6acc
# ╟─7d5b59e8-2067-455b-bfdf-9bf671bd201c
# ╟─ef05e2b8-81a0-4607-8478-1aaa8faeb1a8
# ╟─5cfb0e72-8f37-411e-a637-03fb6c4e7cf1
# ╟─ea82ed13-ed3c-43d1-82bc-375765b14a44
# ╟─319b3ca1-88ed-4c89-a56e-db304366a538
# ╟─c69b791d-a7d3-4b56-92c7-133abdeae3f2
# ╟─416a2823-f799-473a-a244-deeb93d22c98
# ╟─adc80eda-c72d-4117-9baa-62c35a8997ee
# ╟─9a2af99d-993e-44a3-a6cb-442589143685
# ╟─6e562ec6-8dde-4d28-8a8f-bb1c34eb3dc9
# ╟─cde7d0a5-73db-4764-aebd-5415158e9c58
# ╟─15e4c022-8fec-4239-b8f7-2324dbc6d25f
# ╟─33c5749f-6501-4aaa-a63c-37addc1c8932
# ╟─35f86262-ed61-4b06-9e4f-779c9d19cc68
# ╟─bbab833e-f038-4154-89b5-ff47f506bb90
# ╟─17cc6c7b-a1b6-48eb-9cd0-4daf71eddcb5
# ╟─aa48d6e7-0067-406b-8e4f-00311169ccb3
# ╟─38fbb892-9838-40a2-bed0-b68f16f568c7
# ╟─073ad3cb-31d8-4023-a0fc-21ef7174cd3a
# ╟─3034153c-7623-4911-a589-1b0fb2384164
# ╟─413e6f28-0476-4686-b9a2-0426a066b3e3
# ╟─b22e405e-aa48-403f-b2fd-9a62c1f26efb
# ╟─e131acd9-159c-4874-a143-f1e3617b5213
# ╟─66a685c5-384c-408a-bff7-6c94f6dbad07
# ╟─82be305d-b6b6-4c88-b796-1c7c81ef5183
# ╟─cc71bbdc-7a18-4699-bf3b-ad4353ba21c9
# ╟─6847a380-d797-4bdb-b7cf-d03981481853
# ╟─d7ad2876-7a6c-418b-9eff-4394bd5f8820
# ╟─6d696c74-109f-4ec4-8f5e-7b67ec083d5f
# ╟─899cebe3-1173-4fec-8bf0-8a651ae1e48b
# ╟─d363bb82-9511-4f8d-a61c-2d0ae3cc28bb
# ╟─6bb0c2db-70bb-4674-a547-cb6cd95d9ba9
# ╟─21734572-d395-4916-af2c-fd31431acb2b
# ╟─22bd8288-f9f3-4647-8387-69c85ed38f05
# ╟─a64a0feb-fba2-480f-95a4-cffe993737db
# ╟─be7caae4-30a6-4a80-ac9c-e65b6e918963
# ╟─dbacc313-84f1-4d20-9602-967e3d23a78c
# ╟─ec00c2fe-1528-421e-aa86-0a0c3c78b3ad
# ╟─ec3a073c-b95a-44e4-bb34-1b4b0e52d478
# ╟─6e46b238-6ff0-4320-9987-b218aa1c84df
# ╟─891fe138-8d79-44c2-9975-26c0d1ef1509
# ╟─c2e3e3e9-b9d4-41d3-8e2b-eb04ba0338a5
# ╟─0d3aa5ee-3b45-4f1d-80a5-c797fdbf7101
# ╟─d0be16dd-bd06-44a0-9a33-aca08b240938
# ╟─15a63e4b-67b1-4e53-8048-51967b1a56b9
# ╟─cc432a74-fb24-4470-9a18-efd14971d413
# ╟─78162b46-581f-40b3-8a28-e1b80a5555f0
# ╟─0ea4a8d1-fecd-4679-adcb-a38b295527f1
# ╟─181c079b-391d-4857-99be-3f9af25e8cf9
# ╟─6cfcea02-a286-42bf-968e-78f7690c430a
# ╟─88abdf77-c65f-4fa6-9963-bc2d91c1595a
# ╟─15559296-f339-46a5-8602-fcf7445930b0
# ╟─a7fcf2fc-f00c-4ec1-9729-6c764ef8f5c6
# ╟─4a0a68cf-b5c6-43f0-8434-9d0dc21a72fe
# ╟─7dcc3561-41f8-4317-b37e-c1ed5d58a4f8
# ╟─0238d3ef-979f-466b-9af3-3dca9da0165c
# ╟─73a1769a-ee74-44bc-bc87-abed5ea99dc3
# ╟─b2628a11-0a9b-4c18-85cf-1891cfc911de
# ╟─8633016f-d215-4f68-8bbb-d4a0b0c7cc6e
# ╟─22f81c97-b71a-45d8-a546-bdd54ea788aa
# ╟─600776b7-2383-4bf1-b1e4-34b8698a8b9f
# ╟─7a64eaaa-d455-492d-a6bf-50a2d7857de4
# ╟─7bbf8c10-2cc1-4625-bba5-bbd174f5d09f
# ╟─d11e79e6-c5a8-41ce-ac81-7a3d56cb67fd
# ╟─2a0f5990-ea47-439c-b858-8bf09b6465f7
# ╟─8512a7c2-498b-49ef-adfb-b426f55060d9
# ╟─6b053e8f-9c99-4f3d-a88c-3b3697024e2d
# ╟─0dec3df7-9732-4b5e-bece-3eac82023b76
# ╟─4be2ef34-97e5-4b69-8e78-0ad229cd38f9
# ╟─b6c85d14-ee2f-4537-856d-0f8663536039
# ╟─f95b2462-d25f-4e9c-a6ad-2a40fffd0fd0
# ╟─66d6c18d-4a8a-4665-a101-2f9a94fe731f
# ╟─abcfa7bd-b484-40e7-91b2-87d02ef04099
# ╟─78dd01d6-07f9-4b7f-9940-bcfb1facec73
# ╟─d9e7e1cb-e42d-437c-87b2-a3db4b6614e7
# ╟─7c7cd7df-10d9-44b7-b7fe-686c868a61a6
# ╟─053e4f8d-7975-4924-9306-89d4ad2e336d
# ╟─e03268ec-942e-4855-aa50-c84a6a049c36
# ╟─703e559f-5dd4-4797-af2a-ef3d5ee95f82
# ╟─6850ae2c-7009-4b76-a8b7-5394e2a6780d
# ╟─899e208d-a586-4d81-832c-9e03e644df60
# ╟─d2ba656a-5705-4bbc-b79b-8b29ea4cfc61
# ╟─cb7b8c30-92c4-4a50-97e7-e7ecc157eb1f
# ╟─10315c53-fbdd-4c9d-98f8-06a796248a5d
# ╟─413550be-6d46-4545-a174-bc6aeaed4122
# ╟─45e754bb-50ba-4cf9-8c9d-eeae6c0ae72d
# ╟─dc5b66a5-3dff-4c62-89f9-746a48d79c0e
# ╟─015ae6d4-f72f-4be5-8f94-8af5fad0eee0
# ╟─e2bd1e02-1399-46fa-bb14-f3c53d9a34e2
# ╟─e5a4b813-4990-4d0c-a2ba-7e13d92e8980
# ╟─5e0b5c90-70b7-4e5b-91a7-64a557adf894
# ╟─df4dba86-34f2-4c23-99d5-0e21b3a6c740
# ╟─1e204fb2-dbc2-4924-91ff-592bd4e981ca
# ╟─d3b350aa-89b8-404a-89a9-a3ce7e39e828
# ╟─8dc4bd72-648b-4bb3-951f-82a148b95208
# ╟─25682b08-fdc9-4714-b974-7e28e9a365a3
# ╟─3b02e55f-d467-4539-aed1-9020bf4f4217
# ╟─e119c4d4-6edb-42dd-a0ff-e9023d17df04
# ╟─a98b21e9-83c5-498a-88c2-2f8f23899255
# ╟─cdf148cb-27a1-459a-8ec5-0562e1261bb5
# ╟─09217adb-d840-4e1a-8dae-8f39cdfc9fe8
# ╟─7ca0a44b-89c4-4906-ba69-40cd032a1cf6
# ╟─c7cadb84-4683-460a-9533-38e61f402c62
# ╟─44977dcd-4e2a-460c-9b90-bd98b32decbd
# ╟─d5a95774-5b64-4f2d-a494-a310b5275baa
# ╟─1b0739a8-fcf2-4d5f-bac1-1320cef68f81
# ╟─dc13952e-0581-40b4-87e2-509b353bcf91
# ╟─5a2cc1a5-c61b-4cc2-9c19-d2ae6f4fc363
# ╟─e01aada2-9ea0-4207-9a7d-bb4139d36b25
# ╟─907eb579-d791-46a1-af82-e1b8f6f7dc1b
# ╟─f550854b-0d35-40fb-b229-7d6f719b19c7
# ╟─fe3d7cae-5adf-4593-a3a3-741cf5294cdb
# ╟─252ff3de-f97e-4445-be35-000187feeb2d
# ╟─b4f33ac4-b8e9-4ca0-a016-a0e10282b0fd
# ╟─4a14863a-95c5-4a3a-8ff4-bcb25aaf928d
# ╟─a51dc84d-b59c-4d50-9ed8-c691e9a64e2e
# ╟─7340eed1-d1aa-4c9f-80f1-76270f766629
# ╟─08fcc886-3169-4334-9bff-6012428b43a6
# ╟─ae0e00a3-a323-4b13-ad17-53ab4ec7a8de
# ╟─640f345a-7ef9-4f2e-8061-b4b75ffbee98
# ╟─3e65598e-b338-4dfc-8924-3c7effecce57
# ╟─c2cba999-caf4-454a-a8c3-d04191c37b07
# ╟─228edbd3-e83b-4a5f-877e-447fadd0d1dd
# ╟─1b9875da-a805-466d-8761-d12f933df486
# ╟─9d21dccf-7529-4586-a35a-cbcb3e0da6d8
# ╟─b4e72e68-4c9f-4ee9-beb4-2672a6adb7c0
# ╟─e8f09060-4e8f-4d62-b0c2-998b5fdb27ff
# ╟─655862ee-d260-4d12-8103-5a9f3c612018
# ╟─5fe6f6ca-d15c-4dfb-b94a-b0a1e71abd28
# ╟─7ceb1e73-7748-4f1e-9d99-55864079ef32
# ╟─03e19a6c-9fc7-4fb7-b818-c4cf3ec0bafa
# ╟─b70f5bdf-fcb1-4cb3-aaac-d6b03c138c1e
# ╟─c074bc42-b7f1-4749-9e44-c36b55fad72d
# ╟─df34fd79-2db4-49ac-a2a7-634c489753f1
# ╟─0446d34d-5a9d-420d-820f-1a50d3f1fa21
# ╟─cde173f0-56f1-40fc-aeda-788e1b41478a
# ╟─4ea0e7b1-3962-45fb-b862-37af6da7db32
# ╟─1bb57cb7-1da0-40d7-8ff9-3ab3ae04a790
# ╟─b99e3a13-f528-4a5d-8bbe-abb1d74f6763
# ╟─b7f71696-419f-4b1a-8c92-c3aaf5baf059
# ╟─6299b42b-7986-4b24-a370-8f10a90af128
# ╟─4c06cb94-23e7-404d-b1ba-ba4562d57468
# ╟─13e47555-a434-4f8d-a6d9-c9fc75571016
# ╟─67a85173-1225-41dd-88ce-c7e57de0eab1
# ╟─2f1b2d78-f6c3-44b6-a81e-d732522009fa
# ╟─72f8d370-c09b-4012-aff1-c2deeabb2748
# ╟─bd9b55c2-484b-4976-b048-3411e06cb416
# ╟─04cebcf7-c2ed-4f44-b3c4-45687cf3bc0e
# ╟─a5805b68-ee6e-4574-a1de-7a0c765d6719
# ╟─cdb4b9ae-c308-4961-be18-b9110bf8e81a
# ╟─9c5626c8-c20d-4b15-a7a6-17ecfd1fe864
# ╟─e05a5b82-1666-4852-ae3a-8f4a8828176f
# ╟─ee5d3754-b434-4c99-86dd-94e4fe476271
# ╟─d515ce0e-f9a7-48bb-8e56-9321cf71db7f
# ╟─af06fb26-9149-4823-9ac2-5a1e075a480e
# ╟─4e378b64-baa3-48f9-b4b8-8626edd43826
# ╟─3c77d98b-b00e-4828-b7f2-be8628bda392
# ╟─b02635b7-9419-442c-a646-a7c2575d5ea4
# ╟─c9717c6f-9545-400c-8787-f75487c32464
# ╟─d721d767-4eea-4409-b5fd-0f70d978d8d2
# ╟─59ae3a5d-a151-4c14-9c47-c62b7082b5d1
# ╟─e704e2a3-ffbf-4caa-90f8-28ea6f13663e
# ╟─2e246113-10f4-410f-8f56-93b21cd565db
# ╟─588bd817-1285-4af4-be55-8c4ea7c8a1bc
# ╟─47711a5c-e208-4ced-ba21-28b41befceae
# ╟─d76c81a5-d2dd-42cd-a857-92858407bb41
# ╟─c1661848-8003-4a40-9308-7cda4f42b6ce
# ╟─839139c6-423c-46c8-9c15-5f43bcc706e0
# ╟─29cd9d46-8d21-4aa4-8f22-5a973bd486dd
# ╟─ee507b3a-1537-498a-b322-d813fcb6f109
# ╟─9ade260f-dfe8-4c5f-a6b3-44a75e7792fb
# ╟─f2da9b05-d722-43e5-b1a6-b67c3f094e6b
# ╟─57d726f0-5965-46e6-8452-0e506527ffd6
# ╟─74b60a1a-52a3-4877-9e94-fa3e555dde6c
# ╟─f9953311-2cce-450d-8d42-9f4bb2f13055
# ╟─29f900a7-8d55-4049-a859-2dd36fe8f3b4
# ╟─7c427286-4aae-4af3-8bab-244ff143ba40
# ╟─ccdc7f0e-ad78-4a03-b330-da1333a2af5b
# ╟─1761fbc0-00e0-4ad5-9f6e-65a9ccf3d425
# ╟─40eb33ad-544a-4d50-b318-2edb44dd7fd6
# ╟─1edf99ca-30c6-44e1-9f9a-0ac9536600d4
# ╟─0d5eea0e-ff31-4bd2-a541-02eb8ddb9370
# ╟─de92a382-944b-4881-96f5-a458910cd9bf
# ╟─50233d82-f631-4fe8-bd89-007c761c3e51
# ╟─1ab6c2dc-8bff-4068-a47b-9eb0134b48bb
# ╟─4100760d-a5ef-49f0-83c0-ad5216512fbc
# ╟─f5ecc408-4bfc-4546-a8e0-336b5279d16a
# ╟─fccc4ff2-9ae8-4e1a-aded-523a94c90824
# ╟─e7757be3-2050-4282-bd4b-c3965e0d9ce1
# ╟─dbc2b1a1-4451-4704-8c29-94fe62fb1a5c
# ╟─b5372078-4b2d-49df-9fc8-f21f727689ab
# ╟─47ebc2de-622d-47e0-b323-3f34b1b96d22
# ╟─8ef7a85c-5c91-46ff-bab0-5d7e24793074
# ╟─a120bf16-6734-4dba-8397-2f1ca6b28086
# ╟─6ff6ce0e-91f3-4fbd-8b43-f35c61506cc0
# ╟─43006026-52e7-49f8-8f5e-d1adc607c67d
# ╟─5d09bdbf-acf5-4b23-8be2-b4ee798593ea
# ╟─7c2b7274-0836-463d-8b17-03877d62ac39
# ╟─d3cb3493-9213-45f4-8396-68b4f1c29f88
# ╟─3219ca96-910d-4c33-8382-650adc1239ef
# ╟─72678f1c-0131-4ba3-bf72-7691ac9f056e
# ╟─879dd658-cfc8-47f2-b3ae-461e2e504a83
# ╟─700f168f-56c5-4c54-b738-0e578a2f2ca8
# ╟─a5da4c2b-b754-4e26-9500-451ab79c5d4a
# ╟─a283e9de-e3d6-43c2-9e67-ed9e08b35deb
# ╟─a7d78736-de62-4261-a299-dc4eff889f4d
# ╟─6ef68e8c-e0ae-4972-8ce3-1119fd2559bc
# ╟─2f71a45c-88e1-4016-bba7-7b10f57eff5a
# ╟─6ebda95b-b3c3-4e4a-8e78-ceea22fb1a29
# ╟─4281a956-48a3-4fcd-b7c2-79b6a304f867
# ╟─1f0eb2b3-8c3b-4d81-ad85-64bc83a9cc57
# ╟─5cfb4fd8-d7af-43e0-aa17-d934011bf194
# ╟─6e89d4db-3f88-40cc-9c78-1d1a7afa0700
# ╟─ff36e8ed-4e3e-43e0-a920-501b5d079004
# ╟─c1d69aa8-69ef-4370-8f18-04af7daff235
# ╟─bee961d1-54f5-4f6e-84fa-17076e91b9cc
# ╟─e4787102-2331-4239-b302-520a441d0cee
# ╟─63d1921f-e487-40ba-8552-8af3281e77ec
# ╟─bd644419-203b-453c-8863-6c37c2222468
# ╟─ea3b8149-66e5-4e3d-8b7e-6314c3e2d395
# ╟─ad114aec-548a-4266-b9e4-ebc4075dd05b
# ╟─50ee1716-7b9f-4ee5-8049-7db726152c10
# ╟─5be0e509-8ef0-4fea-b24f-5da6adfff6f7
# ╟─5fcaf597-a8c6-40b6-91c0-fb2bc589b961
# ╟─b8e0c872-3dc1-458b-b58b-8716bf73a2f2
# ╟─d99bd10b-180c-4a40-a48d-a46f72d7c0ef
# ╟─418d9ddc-16a0-46df-9b60-bd00b29605f2
# ╟─c9d28a3f-6cdf-499f-b1b8-cdb1a3c3f38a
# ╟─9d066880-f09c-4a03-ac91-774ca4f39bc0
# ╟─4e54672d-3c29-4b0e-89e5-93434fad81ff
# ╟─f2d4e6c6-485b-43cf-a565-e01e1cae27ee
# ╟─79cd05dd-0afb-4377-9f54-16759202dc8d
# ╟─ac647f43-02a2-47a8-8f65-08130f5e6faa
# ╟─b9b91d71-68e4-414e-9bb6-e6d3fae35891
# ╟─0aeb97cc-243c-4210-a0b8-a18038189d1c
# ╟─b5743d2b-b4c0-4208-b6dd-64434bfc301f
# ╟─df0cddf6-112f-40d9-849c-06763bbb1910
# ╟─e93df464-9455-445d-bec9-9d348330ac19
# ╟─e263d608-4faa-47e8-b0cd-91bf5a083031
# ╟─2b058b3a-2610-4125-bcf1-dacfebb9f654
# ╟─2b242b23-3acc-46bf-98e0-aa20cee4fe04
# ╟─8edb7f45-c608-48bd-8442-7e2cbaa0b84f
# ╟─a60d09e0-874a-4a11-8245-40ab2e12456a
# ╟─294cbafe-b497-4bec-bcec-8b2af02c368c
# ╟─b17df227-8c08-4f0b-934a-0b88f8cc69b2
# ╟─e8449f5b-dd10-4dc9-8e62-5d335538fb7d
# ╟─26d51c64-aa5b-4a45-8c36-d0cef96075ca
# ╟─06448374-49ff-4a73-8dea-7704e60c7398
# ╟─10eb0327-af53-4d43-9609-bfdee96a8b3d
# ╟─713ae17d-6b81-4ea7-a5da-bb7bcde52a05
# ╟─cb9782d6-dd14-4772-b408-b6392580c41b
# ╟─ee7c8c7d-507d-4b1b-8d35-c61df6d18919
# ╟─e6ad86a7-b745-4be1-9597-4e6d4362e903
# ╟─6bda1909-5b59-420c-8f76-236785bcda47
# ╟─2cd7b7dd-e13f-49d6-83f4-982f4b162b94
# ╟─a617c83e-ff14-49bd-a046-bd1626640716
# ╟─172f2fba-93ca-42ba-a129-40be536527a9
# ╟─7ec13621-75c7-43aa-9d3f-d8313bf57bde
# ╟─bb8f6db2-7a0b-47cf-871e-d6a727c60ddc
# ╟─8228f1d8-97a0-41a9-b7ab-9dcfefa3e3e8
# ╟─0431edfa-fb6d-4933-a8e7-121091400eb0
# ╟─8b005808-c486-4421-a63a-7410322e5d64
# ╟─ebff72d7-e7c9-463a-9508-ddb28ead2560
# ╟─97ea8588-5299-40df-8eac-60456c17d9be
# ╟─5e2744ac-61a9-456c-807a-1e2b408a23a6
# ╟─5f113c62-246b-4a29-9e21-4e3f6aa8c308
# ╟─c8930e0b-9d8f-42b8-87be-e3a392f5e400
# ╟─098f9db6-95f2-4a28-a7aa-5107368b6924
# ╟─89a325a5-43fb-462d-bf8d-f4efc3bfd210
# ╟─1bbdb5be-cfc2-46b4-a0b7-69d64d5fb15c
# ╟─357409e5-bd31-4d3c-958d-23b23ca91a27
# ╟─320dc1f7-479b-493e-9ebd-1213605629b1
# ╟─55c0ba76-0ac2-41dc-8c8e-66aaa83f6183
# ╟─d86e7417-584e-4af4-a447-d405d613252e
# ╟─53704f98-ad8d-407a-a2a3-928204a6d926
# ╟─afd30f69-9579-4286-95b7-8f0116ee59b2
# ╟─3c163797-bb0c-4d81-bb2e-ebff098f4906
# ╟─ff62ffec-eaab-435e-aea8-71a15cb88670
# ╟─d63ce2e6-e20d-4499-902a-c977991045a5
# ╟─eec232ef-5cc7-405e-9462-f3a5cf0c0456
# ╟─066ba0dd-fb59-443b-a51a-3a43db039794
# ╟─7e2441a5-920a-4516-b51f-232f00c0e375
# ╟─a81816a9-6397-412d-9a2a-3f4de3c81244
# ╟─609c7439-5898-4f62-9f7b-8d100245da38
# ╟─687f20b4-7e37-4491-810e-72ce471bd74a
# ╟─a4bb41b3-cc7d-4f43-bf07-97673207184c
# ╟─3dbeaf7d-7698-4c46-bf7f-e787d78af8f6
# ╟─7e06daad-e400-4946-aa95-74af191ada7b
# ╟─a87f746b-6301-4820-b751-5ef611d2d519
# ╟─4dd90986-3516-432c-b691-9abcd9012a83
# ╟─f5f01e49-7f93-44a9-bc24-145d932a9c2c
# ╟─21f47abb-088e-44f9-981a-87c78971d35d
# ╟─b6cb7450-96b9-4e8c-8e19-ab18d30d5bf8
# ╟─1db41a29-5c9c-443b-a303-490f45650cba
# ╟─4280ec57-8843-40e9-bf73-3fa36ead96ba
# ╟─766f97b9-cc34-4012-8fe9-55eb952b14f5
# ╟─55296b86-84ec-4847-81f8-284bb0ae12db
# ╟─b5c37130-d0c6-4d61-b1ab-db70e3ce5ec3
# ╟─ebbab1a1-02cd-4373-9065-b8ef18399db1
# ╟─91801386-fecb-4e2b-a85b-76abb1f9c322
# ╟─26f74b37-95f2-4abc-b9ad-cd1f24b64f3d
# ╟─0b4719bc-4da9-40a1-9f00-8495576154f0
# ╟─bc058fa5-ff76-4d47-98bb-f38d125bbfc5
# ╟─27dee0cf-649b-4317-81d6-aa49f72229ec
# ╟─9a7fffbc-142a-487b-a887-084a12a393a2
# ╟─1d1073e7-870d-435e-a0b1-e17fbf29588a
# ╟─49c617c1-fac3-4eff-b220-b8c29a82aeed
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
