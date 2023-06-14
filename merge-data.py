import numpy as np

# root = "edm_data/cifar10"
root = "/storage/projects/miax/dm-imp-at/edm_data/cifar10"

part1 = np.load(f"{root}/20m_part1.npz")
part2 = np.load(f"{root}/20m_part2.npz")
np.savez(
    f"{root}/20m.npz",
    image=np.concatenate([part1["image"], part2["image"]]),
    label=np.concatenate([part1["label"], part2["label"]]),
)

# part1 = np.load(f"{root}/50m_part1.npz")
# part2 = np.load(f"{root}/50m_part2.npz")
# part3 = np.load(f"{root}/50m_part3.npz")
# part4 = np.load(f"{root}/50m_part4.npz")
# np.savez(
#     f"{root}/50m.npz",
#     image=np.concatenate(
#         [part1["image"], part2["image"], part3["image"], part4["image"]]
#     ),
#     label=np.concatenate(
#         [part1["label"], part2["label"], part3["label"], part4["label"]]
#     ),
# )

# part1 = np.load(f"{root}0/50m_part1.npz")
# part2 = np.load(f"{root}0/50m_part2.npz")
# part3 = np.load(f"{root}0/50m_part3.npz")
# part4 = np.load(f"{root}0/50m_part4.npz")
# np.savez(
#     f"{root}0/50m.npz",
#     image=np.concatenate(
#         [part1["image"], part2["image"], part3["image"], part4["image"]]
#     ),
#     label=np.concatenate(
#         [part1["label"], part2["label"], part3["label"], part4["label"]]
#     ),
# )
