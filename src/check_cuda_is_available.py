import torch


def main() -> bool:
    """CUDAが利用可能かの判定結果をブール値で返す。

    Returns:
        bool: 判定結果。
    """
    return torch.cuda.is_available()


if __name__ == "__main__":
    print(f"cuda is available: {main()}")
