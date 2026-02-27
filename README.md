# Zongons

Flat, slotted polygon connectors for building 3D geometric structures. Designed in OpenSCAD and exported as DXF files for laser cutting.

The concept: each "zongon" is a flat polygon (triangle, square, pentagon, hexagon) with radial slots cut from its edges. The slots are sized to interlock with matching slots on adjacent pieces, letting you snap polygons together face-to-face to assemble polyhedra and other geometric forms.

## Files

### OpenSCAD source (`.scad`)

| File | Shape | Sides | Diameter | Notes |
|------|-------|-------|----------|-------|
| `i.scad` | Triangle | 3 | 40mm | Basic triangular face |
| `bracelet.scad` | Triangle | 3 | 40mm | Variant with different slot geometry |
| `j.scad` | Pentagon | 5 | 60mm | Pentagonal face |
| `hex2.scad` | Pentagon | 5 | 68mm | Pentagon, side length 34mm |
| `hex.scad` | Hexagon | 6 | 80mm | Hexagonal face |
| `truncated-octahedron.scad` | Hex + Square | 6/4 | — | Renders both faces needed for a truncated octahedron |

### Exported DXF files

Ready-to-cut 2D profiles exported from OpenSCAD:

- `hex.dxf`, `hex2.dxf` — hexagonal/pentagonal faces
- `quad.dxf` — square face
- `5.dxf` — pentagonal face
- `i-60.dxf` — triangular face
- `Untitled.dxf` — miscellaneous export

### Junk files

The `.scad.XXXXXX` files (e.g. `bracelet.scad.Uh3568`, `hex2.scad.Lv3788`) are OpenSCAD autosave backups and can be ignored or deleted.

## How it works

Each connector is generated with the same OpenSCAD pattern:

```scad
sides = 6;
$fn = sides;
difference() {
  circle(d=80);            // outer polygon (approximated by $fn segments)
  for (i = [1:sides]) {
    rotate(i*360/sides) translate([...]) square([slot_width, slot_depth]);
  }
}
```

- `$fn=N` makes OpenSCAD render the circle as an N-sided polygon
- The `difference()` subtracts rectangular slots at each vertex, creating the interlocking tabs
- Slot dimensions are tuned per-shape to fit the material thickness

## Usage

1. Open a `.scad` file in [OpenSCAD](https://openscad.org/)
2. Adjust slot dimensions if needed to match your material thickness
3. Export as DXF: **File → Export → Export as DXF**
4. Laser cut the DXF profile from your material (cardboard, acrylic, plywood, etc.)
5. Cut multiple copies of each face type and snap them together along the slots

## Example structures

- **Truncated octahedron**: 8 hexagonal faces + 6 square faces (`truncated-octahedron.scad` shows both)
- Other Archimedean and Platonic solids by combining triangles, squares, pentagons, and hexagons
