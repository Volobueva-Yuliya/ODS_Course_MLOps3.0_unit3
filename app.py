import numpy as np


def main():
    """
    Function to create a random square matrix of size 3x3,
    compute its determinant, and print the results.
    """
    # Create a random square matrix of size 3x3
    matrix = np.random.randint(0, 10, size=(3, 3))
    print("Original matrix:")
    print(matrix)

    # Compute the determinant of the matrix
    determinant = np.linalg.det(matrix)
    print("Determinant of the matrix:")
    print(determinant)


if __name__ == "__main__":
    main()
