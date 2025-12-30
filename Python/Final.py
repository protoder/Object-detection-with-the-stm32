if False:
        import numpy as np


        from PIL import Image
        import struct

        # Параметры изображения
        WIDTH = 160
        HEIGHT = 140
        TOTAL_PIXELS = WIDTH * HEIGHT

        # Чтение бинарного файла
        with open('data2.bin', 'rb') as f:
            data = f.read()

        # Проверяем размер файла
        expected_size = TOTAL_PIXELS * 2  # 2 байта на пиксель в формате RGB565
        if len(data) != expected_size:
            print(f"Предупреждение: размер файла ({len(data)} байт) не соответствует ожидаемому ({expected_size} байт)")
            # Рассчитываем фактическое количество пикселей
            actual_pixels = len(data) // 2
            if actual_pixels < TOTAL_PIXELS:
                print(f"Доступно только {actual_pixels} пикселей из {TOTAL_PIXELS}")

        # Создаем массивы для RGB компонентов
        rgb_data = np.zeros((TOTAL_PIXELS, 3), dtype=np.uint8)


        # Функция для конвертации RGB565 в RGB888
        def rgb565_to_rgb888(rgb565):
            # RGB565 формат: RRRRRGGG GGGBBBBB
            # Извлекаем компоненты
            r = (rgb565 >> 11) & 0x1F  # 5 бит
            g = (rgb565 >> 5) & 0x3F  # 6 бит
            b = rgb565 & 0x1F  # 5 бит

            # Масштабируем до 8 бит (0-255)
            r = (r * 255) // 31
            g = (g * 255) // 63
            b = (b * 255) // 31

            return r, g, b


        # Обрабатываем данные
        pixels_processed = 0
        for i in range(0, len(data), 2):
            if i + 1 < len(data):
                # Читаем 2 байта с учетом перестановки (little-endian)
                # data[i] - младший байт, data[i+1] - старший байт
                rgb565 = (data[i] << 8) | data[i + 1]

                # Конвертируем в RGB888
                r, g, b = rgb565_to_rgb888(rgb565)

                # Сохраняем в массив
                if pixels_processed < TOTAL_PIXELS:
                    rgb_data[pixels_processed] = [r, g, b]
                    pixels_processed += 1
                else:
                    break

        # Если обработали меньше пикселей, чем нужно
        if pixels_processed < TOTAL_PIXELS:
            print(f"Обработано {pixels_processed} пикселей, заполняем остаток черным цветом")
            # Заполняем оставшиеся пиксели черным цветом
            rgb_data[pixels_processed:] = [0, 0, 0]

        # Изменяем форму массива на 160x140x3
        image_array = rgb_data.reshape(HEIGHT, WIDTH, 3)

        # Создаем и сохраняем изображение
        image = Image.fromarray(image_array, mode='RGB')
        image.save('data2.png')
        print(f"Изображение сохранено как data2.png ({WIDTH}x{HEIGHT})")

        # Показываем информацию об изображении
        print(f"Размер изображения: {WIDTH}x{HEIGHT}")
        print(f"Формат: RGB")
        print(f"Диапазон значений R: {np.min(image_array[:, :, 0])} - {np.max(image_array[:, :, 0])}")
        print(f"Диапазон значений G: {np.min(image_array[:, :, 1])} - {np.max(image_array[:, :, 1])}")
        print(f"Диапазон значений B: {np.min(image_array[:, :, 2])} - {np.max(image_array[:, :, 2])}")

        # Опционально: показать изображение
        # image.show()

        import numpy as np
        from PIL import Image

        # Параметры изображения
        WIDTH = 160
        HEIGHT = 120

        # Чтение бинарного файла
        with open('data2.bin', 'rb') as f:
            # Читаем все данные
            data = f.read()

        # Рассчитываем ожидаемый размер файла (2 байта на пиксель)
        expected_size = WIDTH * HEIGHT
        if len(data) != expected_size:
            print(f"Предупреждение: размер файла ({len(data)} байт) не соответствует ожидаемому ({expected_size} байт)")
            # Если данных меньше, обрежем размер изображения
            actual_pixels = len(data) // 2
            if actual_pixels < WIDTH * HEIGHT:
                HEIGHT = actual_pixels // WIDTH
                if HEIGHT == 0:
                    HEIGHT = 1

        # Создаем массив для пикселей
        pixels = []

        # Обрабатываем данные (каждые 2 байта - один пиксель)
        #for i in range(0, len(data), 2):
        for i in range(0, len(data)):
            if i + 1 < len(data):
                # Берем только первый байт из двухбайтной записи
                pixel_value = data[i]
                pixels.append(pixel_value)

        # Если пикселей недостаточно для полного изображения
        if len(pixels) < WIDTH * HEIGHT:
            # Дополняем нулями или обрезаем размер
            pixels.extend([0] * (WIDTH * HEIGHT - len(pixels)))
        elif len(pixels) > WIDTH * HEIGHT:
            pixels = pixels[:WIDTH * HEIGHT]

        # Преобразуем в массив numpy и изменяем форму на 80x60
        image_array = np.array(pixels, dtype=np.uint8).reshape(WIDTH, HEIGHT)

        # Создаем изображение
        image = Image.fromarray(image_array, mode='L')  # 'L' - режим оттенков серого

        # Сохраняем как PNG
        image.save('data.png')
        print(f"Изображение сохранено как data.png ({WIDTH}x{HEIGHT})")

        # Дополнительно: покажем информацию об изображении
        print(f"Размер изображения: {WIDTH}x{HEIGHT}")
        print(f"Диапазон значений пикселей: {np.min(image_array)} - {np.max(image_array)}")

        # Опционально: показать изображение
        # image.show()
        # -*- coding: utf-8 -*-

        """ллл.ipynb
        
        Automatically generated by Colab.
        
        Original file is located at
            https://colab.research.google.com/drive/1LH-Zq57eJxX-ji-jBqyM4X7avNXws2i5
        """

        #!pip install -q tf2onnx onnx



        #!pip freeze > requirements.txt

        """# Обнаружение объектов на сетке 14×14
        Адаптация для Google Colab
        """



        # Монтируем Google Drive
        #from google.colab import drive
        #drive.mount('/content/drive')

        # -*- coding: utf-8 -*-
        """MNIST_attention_176x144_full.ipynb
        
        Automatically generated by Colab.
        
        Original file is located at
            https://colab.research.google.com/drive/1QqD4FfWcY5I6gpC65hFoL52NvnrB-wlk
        """


# Импорты
import os
import cv2
import numpy as np
import tensorflow as tf
from tensorflow.keras.layers import *
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.callbacks import ModelCheckpoint
from tqdm import tqdm
import matplotlib.pyplot as plt
import warnings
import gc
from tensorflow.keras import saving
from tensorflow.keras.regularizers import l2
from torchvision import datasets
from tensorflow.keras.layers import Layer
from tensorflow import keras
#import tf2onnx
from PIL import Image
# Callbacks
from tensorflow.keras.callbacks import (
    ModelCheckpoint,
    EarlyStopping,
    ReduceLROnPlateau
)
import time

warnings.filterwarnings("ignore", category=UserWarning, module="keras")
warnings.filterwarnings("ignore", category=UserWarning, module="absl")

NUM_CLASSES = 11
# Укажите путь к данным (изменено на Google Drive)
BASE_DIR = 'E:\MK Detection' #'/content/drive/MyDrive/MK Detection'
RES_DIR = BASE_DIR
TRAIN_IMG_DIR = os.path.join(BASE_DIR, 'images/train')
VAL_IMG_DIR = os.path.join(BASE_DIR, 'images/val')
ANNOT_DIR = os.path.join(BASE_DIR, 'annotations')
MNIST_ROOT = BASE_DIR
BATCH_SIZE = 1024
BEST_MODEL_PATH = os.path.join(BASE_DIR, 'best_detection_model.weights.h5')
LAST_MODEL_PATH = os.path.join(BASE_DIR, 'last_detection_model.keras')
LAST_MODEL_W_PATH = os.path.join(BASE_DIR, 'last_detection_model.weights.h5')
OUTPUT_IMAGES_DIR = os.path.join(BASE_DIR, 'MNIST')
OUTPUT_NPY_DIR = BASE_DIR
RES_DIR = os.path.join(BASE_DIR, 'Res')
# Параметры
# Параметры (изменено для входа 176x144 и сетки 11x9)
ImgW = int(160/2)  # ширина (изменено)
ImgH = int(120/2)  # высота (изменено)
#ImgSz = ImgW  # backward-compatibility: ImgSz оставлен как ширина
IMG_SIZE = (ImgW, ImgH)  # изменено: (width, height)
Sx = 10  # число ячеек по ширине (изменено)
Sy = 8   # число ячеек по высоте (изменено)
#S = Sx  # backward compatibility (раньше использовалось одно S для обеих осей)
GRID_SIZE = (Sx, Sy)
CELL_SIZE = (IMG_SIZE[0] // Sx, IMG_SIZE[1] // Sy)  # изменено: (cell_width, cell_height)
OHE_SIZE = 11  # 0-9 + empty

os.makedirs(RES_DIR, exist_ok=True)

onlyPredict = True
TestONNX = False
global_img_counter = 0
Drawing = False

threshold = 0.7

selected_cat_names = ['bird', 'motorcycle', 'baseball glove', 'snowboard', 'suitcase',
                      'horse', 'bench', 'oven', 'stop sign', 'donut']
print("Классы:", selected_cat_names)

# Проверяем, существуют ли уже распакованные данные
raw_folder = os.path.join(MNIST_ROOT, 'MNIST', 'raw')
if os.path.exists(raw_folder) and len(os.listdir(raw_folder)) >= 4:
    download_flag = False
else:
    download_flag = True
    os.makedirs(raw_folder, exist_ok=True)

mnist_data = mnist_train = datasets.MNIST(root=MNIST_ROOT, train=True, download=download_flag)
mnist_test = datasets.MNIST(root=MNIST_ROOT, train=False, download=download_flag)

# Вспомогательные функции

def draw_annotations_on_image(X, Y_pred):
    img = (X[:,:,0] * 255).astype(np.uint8)
    #if img.shape[2] == 3:
    #    img = cv2.cvtColor(img, cv2.COLOR_RGB2BGR)

    W, H = IMG_SIZE  # предполагается, что IMG_SIZE = (224, 224) или подобное
    cell_size_x = IMG_SIZE[0] // Sx  # S — глобальная константа, например 7 для YOLO-like сетки
    cell_size_y = IMG_SIZE[1] // Sy
    for i in range(Sx):
        for j in range(Sy):
            class_probs = Y_pred[i, j]  # shape: (10,)

            # Разделяем foreground (0–8) и background (9)
            foreground_probs = class_probs[:10]
            background_prob = class_probs[10]

            # Если фон сильный — пропускаем ячейку
            if background_prob >= threshold:
                continue
            print('найдено')
            # Иначе: выбираем класс среди первых 9
            class_id = np.argmax(foreground_probs)  # будет в диапазоне 0–8

            # Отрисовка
            center_x = i * cell_size_x + cell_size_x // 2
            center_y = j * cell_size_y + cell_size_y // 2

            print("ps", center_x, center_y)

            cv2.circle(img, (center_x, center_y), radius=8, color=(190, 190, 190), thickness=-1)
            cv2.putText(
                img,
                str(class_id),
                (center_x + 8, center_y - 8),
                cv2.FONT_HERSHEY_SIMPLEX,
                fontScale=1.5,
                color=(190, 190, 190),
                thickness=2
            )

    return img



# --- Добавлена модифицированная draw_annotations_on_image ---

def draw_annotations_on_image(X, Y_pred):
    img = (X[:,:,0] * 255).astype(np.uint8) if X.ndim == 3 else (X * 255).astype(np.uint8)
    # Поддерживаем формат IMG_SIZE = (width, height)
    cell_w, cell_h = CELL_SIZE  # (cell_width, cell_height)

    for i in range(Sx):

        for j in range(Sy):

            class_probs = Y_pred[i, j]

            # foreground: первые num_classes-1 (если фон последний)
            foreground_probs = class_probs[:NUM_CLASSES-1] if class_probs.shape[0] >= NUM_CLASSES else class_probs
            background_prob = class_probs[-1]
            if background_prob >= threshold:
                continue
            class_id = int(np.argmax(foreground_probs))
            center_x = int(i * cell_w + cell_w // 2)
            center_y = int(j * cell_h + cell_h // 2)
            cv2.circle(img, (center_x, center_y), radius=8, color=(190, 190, 190), thickness=-1)
            cv2.putText(img, str(class_id), (center_x + 8, center_y - 8), cv2.FONT_HERSHEY_SIMPLEX, fontScale=1.5, color=(190,190,190), thickness=2)
    return img

# Метрика и функция потерь
class_weights = np.array([ 34.21270862,  16.51412973, 226.68414761, 118.90928534,
        31.42744922,  20.5046515 ,  20.17494729,  29.43802151,
        90.99991534,  53.06294328,   1.        ])

def create_exact_match_ratio(class_weights):
    class_weights = tf.constant(class_weights, dtype=tf.float32)
    prior = 1.0 / class_weights

    @keras.utils.register_keras_serializable()
    def _exact_match_ratio(y_true, y_pred):
        # y_pred shape: (batch_size, ..., num_classes), где num_classes = 10
        # Предполагаем, что последний класс — фон (индекс 9)

        # Разделяем первые 9 классов и фон (10-й класс, индекс 9)
        foreground_logits = y_pred[..., :10]      # shape: (..., 9)
        background_logit = y_pred[..., 10]        # shape: (...,)

        # Проверяем, превышает ли фон порог
        background_high = background_logit >= threshold  # boolean mask

        # Получаем argmax по первым 9 классам — явно указываем output_type
        foreground_argmax = tf.argmax(foreground_logits, axis=-1, output_type=tf.int32)

        # Фон — это класс 9, но нужно передать как тензор того же типа
        background_class = tf.constant(10, dtype=tf.int32)

        pred_classes = tf.where(
            background_high,      # условие (bool)
            background_class,     # если True → фон (9)
            foreground_argmax     # если False → argmax среди 0–8
        )

        # Истинные метки: предполагаем one-hot
        true_classes = tf.argmax(y_true, axis=-1, output_type=tf.int32)

        # Сравниваем
        errors = tf.not_equal(pred_classes, true_classes)
        total_errors = tf.reduce_sum(tf.cast(errors, tf.float32))
        batch_size = tf.cast(tf.shape(y_true)[0], tf.float32)
        mean_errors_per_sample = total_errors / batch_size

        return mean_errors_per_sample


    return _exact_match_ratio

exact_match_ratio = create_exact_match_ratio(class_weights)

def get_weighted_categorical_crossentropy(class_weights):
    class_weights_tensor = tf.constant(class_weights, dtype=tf.float32)

    @saving.register_keras_serializable()
    def weighted_categorical_crossentropy(y_true, y_pred):
        cross_entropy = -y_true * tf.math.log(tf.clip_by_value(y_pred, 1e-7, 1.0))
        weighted_ce = cross_entropy * class_weights_tensor
        weighted_ce = tf.reduce_sum(weighted_ce, axis=-1)
        return tf.reduce_mean(weighted_ce)

    return weighted_categorical_crossentropy

loss_fn = get_weighted_categorical_crossentropy(class_weights)

# ----------- Squeeze-and-Excitation block -----------
def se_block(input_tensor, reduction=4, l2_reg=1e-4):
    channels = input_tensor.shape[-1]
    se = GlobalAveragePooling2D()(input_tensor)
    se = Reshape((1, 1, channels))(se)
    se = Dense(channels // reduction, activation='relu', kernel_regularizer=l2(l2_reg))(se)
    se = Dense(channels, activation='sigmoid', kernel_regularizer=l2(l2_reg))(se)
    x = Multiply()([input_tensor, se])
    return x


def simple_inverted_block(x, expansion, out_channels, stride, block_id, l2_reg=1e-4, use_se=False):
    in_channels = x.shape[-1]
    expanded = in_channels * expansion
    inp = x

    # Expand
    if expansion != 1:
        x = Conv2D(expanded, 1, padding='same', use_bias=False, kernel_regularizer=l2(l2_reg), name=f'block_{block_id}_expand')(x)
        x = BatchNormalization(name=f'block_{block_id}_expand_bn')(x)
        x = ReLU(name=f'block_{block_id}_expand_relu')(x)

    # Depthwise
    x = Conv2D(expanded, 3, strides=stride, padding='same', groups=expanded, use_bias=False,
               kernel_regularizer=l2(l2_reg), name=f'block_{block_id}_dw')(x)
    x = BatchNormalization(name=f'block_{block_id}_dw_bn')(x)
    x = ReLU(name=f'block_{block_id}_dw_relu')(x)

    # SE
    if use_se:
        x = se_block(x, reduction=4, l2_reg=l2_reg)

    # Project
    x = Conv2D(out_channels, 1, padding='same', use_bias=False, kernel_regularizer=l2(l2_reg), name=f'block_{block_id}_project')(x)
    x = BatchNormalization(name=f'block_{block_id}_project_bn')(x)

    # Residual connection if possible
    if stride == 1 and in_channels == out_channels:
        x = tf.keras.layers.Add()([x, inp])  # placeholder for residual — you might want to store original input
        # Actually, we need to keep the original input:
        # So better to pass it from outside or restructure. For simplicity, skip residual here unless needed.

    return x


# ----------- Модель -----------
def build_lightweight_detector(num_classes=11, input_shape=(IMG_SIZE[0], IMG_SIZE[1], 2)  # изменено: (height, width, channels)
                               , l2_reg=1e-4, use_softmax=True):
    inputs = Input(shape=input_shape)
    x = inputs

    # Stem
    x = Conv2D(16, 3, strides=2, padding='same', use_bias=False, kernel_regularizer=l2(l2_reg))(x)
    x = BatchNormalization()(x)
    x = ReLU()(x)



    # Blocks
    #x = simple_inverted_block(x, expansion=2, out_channels=24, stride=2, block_id=1)
    x = simple_inverted_block(x, expansion=2, out_channels=24, stride=2, block_id=2)
    x = simple_inverted_block(x, expansion=2, out_channels=32, stride=2, block_id=4)
    x = simple_inverted_block(x, expansion=2, out_channels=32, stride=1, block_id=6, use_se=True)

    # Final conv
    x = Conv2D(64, 1, use_bias=False, kernel_regularizer=l2(l2_reg))(x)
    x = BatchNormalization()(x)
    x = ReLU()(x)

    x = Dropout(0.2)(x)

    # Output
    activation = 'softmax' if use_softmax else None
    output = Conv2D(num_classes, 1, activation=activation, kernel_regularizer=l2(l2_reg), name='detection_output')(x)
    model = Model(inputs, output, name='LightweightDetectorV2')
    return model

if TestONNX:
# ----------- Создание и сохранение -----------
    model = build_lightweight_detector()
    model.summary()
    model.save("model.keras")

# ----------- Конвертация в ONNX -----------
    spec = (tf.TensorSpec((1, ImgSz, ImgSz, 1), tf.float32, name="input"),)
    onnx_model, _ = tf2onnx.convert.from_keras(model, input_signature=spec, output_path="model.onnx")

    print("✅ Модель успешно сохранена в model.onnx")

    from google.colab import files
    files.download("model.onnx")

    a = a/0

# Загрузка или создание модели
weights_loaded = False
if False and os.path.exists(LAST_MODEL_PATH):
    try:
        print("Пытаемся загрузить полную модель...")
        model = tf.keras.models.load_model(LAST_MODEL_PATH,
              custom_objects={
                  '_exact_match_ratio': exact_match_ratio  # или точное имя функции из get_config
              })
        print("✅ Модель успешно загружена.")
        weights_loaded = True
    except (ValueError, OSError) as e:
        print(f"❌ Не удалось загрузить модель")
        print("Обучаем с нуля.")
else:
    print("Файл модели не найден. Обучаем с нуля.")

if not weights_loaded:
    model = build_lightweight_detector(num_classes=NUM_CLASSES)

model.compile(
        optimizer=Adam(0.0003),
        loss='categorical_crossentropy',
        metrics=['categorical_accuracy', exact_match_ratio]
    )

model.summary()

# Функции обработки данных
def add_positional_channels(img_tensor):
    """
    Добавляет один канал с уникальным номером ячейки координатной сетки (линейный индекс).
    Вход: (H, W, 1) или (H, W)
    Выход: (H, W, 2)
    """
    if img_tensor.ndim == 2:
        img_tensor = np.expand_dims(img_tensor, axis=-1)

    H, W = img_tensor.shape[:2]

    # Создаём линейные индексы: от 0 до H*W - 1
    linear_indices = np.arange(H * W, dtype=np.float32).reshape(H, W)

    # Нормализуем, если нужно (например, к [0, 1])
    linear_indices /= (H * W - 1)  # теперь значения в диапазоне [0, 1]

    # Добавляем как новый канал
    pos_channel = np.expand_dims(linear_indices, axis=-1)  # (H, W, 1)

    return np.concatenate([img_tensor, pos_channel], axis=-1)  # (H, W, 2)

def create_label_grid_from_image(img_np, digit, foreground_threshold=10):
    """
    Создаёт метку в виде сетки 16x16x11, где только одна ячейка — центр bounding box объекта — помечена классом `digit`.

    Параметры:
        img_np: 2D numpy array (H, W) — изображение (например, grayscale)
        digit: int от 0 до 9 — метка класса
        foreground_threshold: int или float — порог, выше которого пиксель считается объектом (не фоном)
    """
    label = np.zeros((GRID_SIZE[0], GRID_SIZE[1], OHE_SIZE), dtype=np.uint8)
    label[:, :, 10] = 1  # по умолчанию всё — фон


    # Создаём бинарную маску объекта
    foreground_mask = img_np > foreground_threshold

    # Находим координаты всех пикселей, принадлежащих объекту
    nonzero_coords = np.argwhere(foreground_mask)

    # Если объект не найден — возвращаем чистый фон
    if nonzero_coords.size == 0:
        return label

    # Bounding box: min/max по строкам (y) и столбцам (x)
    y_min, x_min = nonzero_coords.min(axis=0)
    y_max, x_max = nonzero_coords.max(axis=0)

    # Центр bounding box
    cx = (x_min + x_max) / 2.0
    cy = (y_min + y_max) / 2.0


    # Определяем ячейку сетки
    grid_x = int(cx // (2*CELL_SIZE[0]))
    grid_y = int(cy // (2*CELL_SIZE[1]))

    # Защита от выхода за границы
    grid_x = min(grid_x, GRID_SIZE[0] - 1)
    grid_y = min(grid_y, GRID_SIZE[1] - 1)


    # Помечаем крест: убираем фон и ставим класс для всех ячеек креста
    for dy, dx in [(0, 0), (-1, 0), (1, 0), (0, -1), (0, 1)]:
        y = grid_y + dy
        x = grid_x + dx
        if 0 <= y < GRID_SIZE[1] and 0 <= x < GRID_SIZE[0]:
            label[x, y, 10] = 0
            label[x, y, digit] = 1


    return label


def augment_geom(img_np, digit, p=0.5):
    """
    Применяет аугментации к изображению и соответствующей метке.

    Args:
        img_np (np.ndarray): Входное изображение (H, W) или (H, W, C)
        digit (int): Метка цифры
        p (float): Базовая вероятность применения каждой аугментации (по умолчанию 0.5)

    Returns:
        aug_images (List[np.ndarray]): Список аугментированных изображений
        aug_labels (List): Список соответствующих меток
    """

    # Работаем с копией, чтобы не менять оригинал
    img = img_np.copy()
    w, h = img.shape[:2]
    is_color = len(img.shape) == 3 and img.shape[2] in (3, 4)

    # --- Геометрические аугментации ---
    # Масштабирование и размещение на холсте 256x256
    if np.random.rand() < p:
        scale = np.random.uniform(0.25, 1.0)
        new_h, new_w = int(h * scale), int(w * scale)
        resized = cv2.resize(img, (new_h, new_w), interpolation=cv2.INTER_AREA)
        canvas = np.zeros((w, h) + ((3,) if is_color else ()), dtype=np.uint8)
        y0 = (h - new_h) // 2
        x0 = (w - new_w) // 2
        if is_color:
            canvas[x0:x0 + new_w, y0:y0 + new_h, :] = resized
        else:
            canvas[x0:x0 + new_w, y0:y0 + new_h] = resized
        img = canvas

    # Поворот
    if np.random.rand() < p:
        angle = np.random.uniform(-45, 45)
        center = (w/2, h/2)
        M_rot = cv2.getRotationMatrix2D(center, angle, 1.0)
        img = cv2.warpAffine(img, M_rot, (h, w),
                             flags=cv2.INTER_NEAREST,
                             borderMode=cv2.BORDER_CONSTANT,
                             borderValue=0)

    # Сдвиг
    if np.random.rand() < p:
        max_shift = 32
        dx = np.random.randint(-max_shift, max_shift + 1)
        dy = np.random.randint(-max_shift, max_shift + 1)
        M_shift = np.float32([[1, 0, dx], [0, 1, dy]])
        img = cv2.warpAffine(img, M_shift, (h, w),
                             flags=cv2.INTER_NEAREST,
                             borderMode=cv2.BORDER_CONSTANT,
                             borderValue=0)

    # Создаём метку
    new_label = create_label_grid_from_image(img, digit)
    #aug_images.append(img)
    #aug_labels.append(new_label)

    return img, new_label

def augment_inplace(img_np, p=0.5):
    """
    Применяет аугментации к изображению и соответствующей метке.

    Args:
        img_np (np.ndarray): Входное изображение (H, W) или (H, W, C)
        digit (int): Метка цифры
        p (float): Базовая вероятность применения каждой аугментации (по умолчанию 0.5)

    Returns:
        aug_images (List[np.ndarray]): Список аугментированных изображений
        aug_labels (List): Список соответствующих меток
    """

    # Работаем с копией, чтобы не менять оригинал
    img = img_np.copy()
    is_color = len(img.shape) == 3 and img.shape[2] in (3, 4)

    # --- Аугментации без изменения геометрии ---
    # Яркость
    if np.random.rand() < p:
        brightness_factor = np.random.uniform(-50, 50)
        if is_color:
            img = cv2.convertScaleAbs(img, alpha=1, beta=brightness_factor)
        else:
            img = cv2.convertScaleAbs(img, alpha=1, beta=brightness_factor)

    # Контраст
    if np.random.rand() < p:
        contrast_factor = np.random.uniform(0.5, 1.5)
        img = cv2.convertScaleAbs(img, alpha=contrast_factor, beta=0)

    # Случайный шум (аддитивный гауссовский)
    if np.random.rand() < p:
        noise = np.random.normal(0, 10, img.shape).astype(np.float32)
        img = np.clip(img.astype(np.float32) + noise, 0, 255).astype(np.uint8)


    return img

def save_batch(images, labels, counter):
    img_path = os.path.join(OUTPUT_NPY_DIR, f'train_images{counter}.npy')
    lbl_path = os.path.join(OUTPUT_NPY_DIR, f'train_labels{counter}.npy')
    np.save(img_path, np.array(images, dtype=np.uint8))
    np.save(lbl_path, np.array(labels, dtype=np.uint8))

def draw_and_save_visual(img, lbl, start_idx):
    vis = cv2.cvtColor(img, cv2.COLOR_GRAY2BGR)
    digit_found = None
    for i in range(GRID_SIZE[0]):
        for j in range(GRID_SIZE[1]):
            ohe = lbl[i, j]
            if np.argmax(ohe) < 10:
                digit = np.argmax(ohe)
                if digit_found is None:
                    digit_found = digit
                x0 = i * CELL_SIZE[0]
                y0 = j * CELL_SIZE[1]
                x1 = x0 + CELL_SIZE[0]
                y1 = y0 + CELL_SIZE[1]
                cv2.rectangle(vis, (x0, y0), (x1, y1), (0, 0, 255), 2)
                cv2.putText(vis, str(digit), (x0 + 2, y0 + 15), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 1)
    if digit_found is not None:
        fname = f"{digit_found}_{start_idx}.jpg"
        cv2.imwrite(os.path.join(OUTPUT_IMAGES_DIR, fname), vis)
        print("Создан " + fname)

def manual_downsample_by_2(img):
    """
    Уменьшает изображение в 2 раза по каждой оси.
    img: np.ndarray формы (H, W), dtype любой (например, uint8 или float)
    Возвращает: np.ndarray формы (H//2, W//2)
    """
    h, w = img.shape
    # Убедимся, что размеры чётные
    if h % 2 != 0 or w % 2 != 0:
        raise ValueError("Image dimensions must be even for 2x downsampling.")

    # reshape -> (h//2, 2, w//2, 2) -> суммируем по осям 1 и 3
    reshaped = img.reshape(h // 2, 2, w // 2, 2)
    downsampled = reshaped.max(axis=(1, 3)).astype(np.uint8)  # целочисленное деление
    return downsampled

# Генератор данных
class EpochFileSequence(tf.keras.utils.Sequence):
    def __init__(self, mnist_dataset, batch_size=32, augment=True, shuffle=True):
        self.mnist = mnist_dataset
        self.batch_size = batch_size
        self.augment = augment
        self.shuffle = shuffle
        self.indices = np.arange(len(self.mnist))
        self.on_epoch_end()

    def __len__(self):
        return int(np.ceil(len(self.mnist) / self.batch_size))

    def on_epoch_end(self):
        if self.shuffle:
            np.random.shuffle(self.indices)


    def __getitem__(self, batch_idx):
        global global_img_counter
        start = batch_idx * self.batch_size
        end = min(start + self.batch_size, len(self.mnist))
        batch_indices = self.indices[start:end]
        batch_images = []
        batch_labels = []
        for idx in batch_indices:
            img_pil, digit = self.mnist[idx]
            img_256 = img_pil.resize((2*IMG_SIZE[1], 2*IMG_SIZE[0]), Image.NEAREST)
            img_np = np.array(img_256)
            if self.augment:
                img_aug, label_aug = augment_geom(img_np, digit)
                img_aug = 255 - augment_inplace(img_aug)
            else:
                label_aug = create_label_grid_from_image(img_np, digit)
                img_aug = 255 - img_np

            # === ВСТАВКА: ручное сжатие в 2 раза ===
            img_aug = manual_downsample_by_2(img_aug)  # теперь (128, 128), если было (256, 256)

            img_tensor = img_aug.astype(np.float32) / 255.0
            img_tensor = add_positional_channels(img_tensor)  # теперь (128,128,3)
            batch_images.append(img_tensor)
            batch_labels.append(label_aug)
            if Drawing:
                draw_and_save_visual(img_aug, label_aug, global_img_counter)
                global_img_counter += 1
        batch_images = np.stack(batch_images, axis=0)
        batch_labels = np.stack(batch_labels, axis=0)
        return batch_images, batch_labels

# Подготовка данных и коллбэки
val_gen = EpochFileSequence(mnist_dataset=mnist_test, batch_size=16, augment=False, shuffle=True)

early_stop = EarlyStopping(monitor='val_loss', patience=10, verbose=1, restore_best_weights=True)

callbacks = [
    ModelCheckpoint(filepath=BEST_MODEL_PATH, monitor='val_loss', save_best_only=True, save_weights_only=True, verbose=1),
    ModelCheckpoint(filepath=LAST_MODEL_PATH, save_best_only=False, save_weights_only=False, verbose=0),
    ModelCheckpoint(filepath=LAST_MODEL_W_PATH, save_best_only=False, save_weights_only=True, verbose=0),
    ReduceLROnPlateau(monitor='val_exact_match_ratio', factor=0.9, patience=20, mode='min', min_lr=1e-8, verbose=1)
]

full_history = {
    'loss': [],
    'val_loss': [],
    'exact_match_ratio': [],
    'val_exact_match_ratio': []
}

train_gen = EpochFileSequence(mnist_dataset=mnist_train, batch_size=BATCH_SIZE, augment=True, shuffle=True)

# Основной цикл обучения
repeat_count = 0
Last = False

while not Last:
    if not onlyPredict:
        EPOCHS = 4
        print(f"Найдено {EPOCHS} файлов для обучения (эпох)")
        print(f"\n=== Начало повтора обучения №{repeat_count} ===")
        history = model.fit(train_gen, validation_data=val_gen, epochs=EPOCHS, callbacks=callbacks, verbose=1)

        if early_stop.stopped_epoch != 0:
            print(f"Обучение досрочно остановлено на эпохе {early_stop.stopped_epoch}")
            Last = True

        for key in full_history:
            key1 = key
            if key == "exact_match_ratio":
                key1 = "_exact_match_ratio"
            elif key == "val_exact_match_ratio":
                key1 = "val__exact_match_ratio"

            if key1 in history.history:
                full_history[key].extend(history.history[key1])
            else:
                full_history[key].extend([np.nan] * EPOCHS)


        plt.figure(figsize=(12, 4))
        plt.subplot(1, 2, 1)
        plt.plot(full_history['loss'], label='train_loss')
        plt.plot(full_history['val_loss'], label='val_loss')
        plt.title(f'Loss (всего эпох: {len(full_history["loss"])})')
        plt.legend()

        plt.subplot(1, 2, 2)
        plt.plot(full_history['exact_match_ratio'], label='train_exact_match')
        plt.plot(full_history['val_exact_match_ratio'], label='val_exact_match')
        plt.title(f'Exact Match Ratio (всего эпох: {len(full_history["exact_match_ratio"])})')
        plt.legend()

        plot_path = os.path.join(BASE_DIR, f'training_plots_repeat_{repeat_count}.png')
        plt.savefig(plot_path)
        plt.show()
        print(f"Графики сохранены: {plot_path}")
    else:
        EPOCHS = 1
        if os.path.exists(BEST_MODEL_PATH):
            model.load_weights(BEST_MODEL_PATH)
            best_model = model
            print('Загрузил веса')
            #model.compile(optimizer=Adam(1e-5), loss='binary_crossentropy', metrics=[exact_match_ratio])
        else:
            best_model = model
        total_samples = min(10, len(val_gen) * val_gen.batch_size)
        X_batch, Y_true_batch = val_gen[0]
        X_batch = X_batch[:total_samples]
        Y_true_batch = Y_true_batch[:total_samples]
        start_time = time.time()
        Y_pred_batch = best_model.predict(X_batch)

         #Надо метриту
        metric_value = exact_match_ratio(Y_true_batch, Y_pred_batch)
        metric_value = tf.reduce_mean(metric_value).numpy()  # усредняем по батчу и конвертируем в число
        print(f"Exact Match Ratio на батче: {metric_value:.4f}")

        elapsed = time.time() - start_time
        print(f"Инференс {total_samples} изображений занял {elapsed:.4f} секунд")
        for i in range(total_samples):
            img_vis = draw_annotations_on_image(X_batch[i], Y_pred_batch[i])
            save_path = os.path.join(RES_DIR, f'pred_val_{repeat_count}_{i}.jpg')
            cv2.imwrite(save_path, img_vis)

        break

    repeat_count += 1


"""#Квантование"""
# Убедимся, что модель загружена (лучшая по весам)
if os.path.exists(BEST_MODEL_PATH):
    print("Загружаем лучшую модель по весам...")
    float_model = build_lightweight_detector(num_classes=NUM_CLASSES)
    float_model.load_weights(BEST_MODEL_PATH)
else:
    print("Лучшая модель не найдена, используем текущую.")
    float_model = model
# Предположим, последний слой — это Conv2D с softmax
# Получаем выход предпоследнего слоя
x = float_model.layers[-2].output  # это ReLU или Dropout перед выходным Conv2D

# Создаём новый выходной слой БЕЗ активации
new_output = Conv2D(11, 1, activation=None, kernel_regularizer=l2(1e-4), name='detection_output_logits')(x)

model_no_softmax = Model(inputs=float_model.input, outputs=new_output)

# Копируем веса выходного слоя
new_output_layer = model_no_softmax.get_layer('detection_output_logits')
new_output_layer.set_weights(float_model.layers[-1].get_weights())

float_model_with_softmax = float_model
float_model = model_no_softmax

# Отключаем компиляцию — для TFLite она не нужна
float_model.compile(run_eagerly=False)  # просто для чистоты

# Создаём генератор валидации (без аугментаций)
val_gen_for_quant = val_gen  # EpochFileSequence(mnist_dataset=mnist_test, batch_size=1, augment=False, shuffle=False)

# Берём первые N примеров для калибровки и валидации (например, 100)
N_CALIB = len(mnist_test)  # 1000
N_VAL = len(mnist_test)  # min(2000, len(mnist_test))  # не слишком много, чтобы быстро
'''
threshold9 = calibrate_background_threshold(
    float_model_with_softmax, val_gen_for_quant, target_prob=0.7
)

threshold8 = calibrate_background_threshold(
    float_model_with_softmax, val_gen_for_quant, target_prob=0.8
)

threshold7 = calibrate_background_threshold(
    float_model_with_softmax, val_gen_for_quant, target_prob=0.7
)

threshold6 = calibrate_background_threshold(
    float_model_with_softmax, val_gen_for_quant, target_prob=0.6
)'''


def representative_data_gen():
    for i in range(N_CALIB):
        img_pil, digit = mnist_test[i]
        img_256 = img_pil.resize((IMG_SIZE[1], IMG_SIZE[0]), Image.NEAREST)
        img_np = np.array(img_256)
        img_np = 255 - img_np  # инверсия, как в обучении
        img_tensor = img_np.astype(np.float32) / 255.0
        # Добавляем позиционные каналы!
        img_tensor = add_positional_channels(img_tensor)  # теперь (256, 256, 3)
        img_tensor = np.expand_dims(img_tensor, axis=0)
        # img_tensor = np.expand_dims(img_tensor, axis=-1)  # (1, 256, 256, 1)
        yield [img_tensor]


# ==============================
# 2. Конвертация в INT8 TFLite
# ==============================

print("Конвертация модели в INT8 TFLite...")
converter = tf.lite.TFLiteConverter.from_keras_model(float_model)
converter.optimizations = [tf.lite.Optimize.DEFAULT]
converter.representative_dataset = representative_data_gen
converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS_INT8]
converter.inference_input_type = tf.uint8
converter.inference_output_type = tf.uint8

# ✅ КРИТИЧЕСКИЕ УЛУЧШЕНИЯ:
# converter.experimental_new_quantizer = True          # новая квантовалка (TF 2.16+)
# converter._experimental_disable_per_channel = False  # включить per-channel квантование (лучше точность!)
# converter.allow_custom_ops = False                   # строгий режим


tflite_quant_model = converter.convert()

tflite_quant_path = os.path.join(BASE_DIR, 'mnist_detector_quant.tflite')
with open(tflite_quant_path, 'wb') as f:
    f.write(tflite_quant_model)
print(f"✅ Квантованная модель сохранена: {tflite_quant_path}")

# ==============================
# 3. Валидация: float32 vs INT8
# ==============================

# Подготовим данные для валидации
X_val_list = []
Y_val_list = []
for i in range(N_VAL):
    if False and i == 0:
        img_pil = Image.open('frame.png').convert('L')

        # Преобразование в массив NumPy
        digit = 7
    else:
        img_pil, digit = mnist_train[i]

    img_256 = img_pil.resize((IMG_SIZE[1], IMG_SIZE[0]), Image.NEAREST)
    img_np = np.array(img_256)

    label_aug = create_label_grid_from_image(img_np, digit)
    if i > 0:
        img_aug = 255 - img_np
    else:
        img_aug = img_np

    img_tensor = img_aug.astype(np.float32) / 255.0
    img_tensor = add_positional_channels(img_tensor)
    # img_tensor = tf.expand_dims(img_tensor, axis=-1)

    X_val_list.append(img_tensor)
    Y_val_list.append(label_aug)

X_val = np.stack(X_val_list, axis=0)  # (N, 256, 256, 1)
Y_val = np.stack(Y_val_list, axis=0)  # (N, 16, 16, 11)

# --- Float32 inference ---
print("Вычисление точности float32 модели...")
Y_pred_float_sf = float_model_with_softmax.predict(X_val, verbose=0)

# --- Float32 inference ---
print("Вычисление точности float32 модели...")
Y_pred_float = float_model.predict(X_val, verbose=0)

# --- INT8 TFLite inference ---
print("Вычисление точности INT8 TFLite модели...")
interpreter = tf.lite.Interpreter(model_path=tflite_quant_path)
interpreter.allocate_tensors()

Y_pred_quant_list = []
input_details = interpreter.get_input_details()[0]
output_details = interpreter.get_output_details()[0]
output_scale, output_zero_point = output_details['quantization']


def draw_clusters_on_image(X, clusters):
    """
    Накладывает результаты кластеризации на изображение.

    Параметры:
    - X: numpy.ndarray — изображение (grayscale или RGB)
    - clusters: список в формате [[x, y, class], ...], где:
        - x, y — координаты ячейки (0-8, 0-10)
        - class — номер класса (int)

    Возвращает:
    - img: numpy.ndarray — изображение с отмеченными кластерами
    """
    # Подготовка изображения
    img = (X[:, :, 0] * 255).astype(np.uint8) if X.ndim == 3 else (X * 255).astype(np.uint8)

    cell_w, cell_h = CELL_SIZE
    last_id = -1

    for cx, cy, class_id in clusters:
        center_x = int(cx * cell_w + cell_w // 2)
        center_y = int(cy * cell_h + cell_h // 2)

        if last_id != class_id:
            # Подпись класса
            cv2.putText(img, str(class_id), (center_x + 10, center_y - 10), cv2.FONT_HERSHEY_SIMPLEX, fontScale=0.7,
                        color=(70, 90, 70), thickness=2)
            last_id = class_id

        # Отметка центра
        cv2.circle(img, (center_y, center_x), radius=5, color=(210, 210, 210), thickness=-1)

    return img


def decode_output_with_clustering(Img, output, K0=20, K1=19, Draw=True):
    """
    Декодирует выход нейросети и кластеризует близкие точки одного класса.
    Возвращает список кластеров: [[x, y, class], ...]
    """
    H, W = Sx, Sy
    decoded = [[-1] * W for _ in range(H)]

    # --- Шаг 1: Декодирование ---
    for i in range(H):
        for j in range(W):
            logits = output[i][j]
            max_val = max(logits[:10])
            bg_val = logits[10]
            if bg_val * K1 >= max_val * K0:
                decoded[i][j] = -1
            else:
                decoded[i][j] = int(__import__('numpy').argmax(logits[:10]))

    # --- Шаг 2: Надёжность по кресту ---
    candidates = []
    for i in range(1, H - 1):
        for j in range(1, W - 1):
            center_cls = decoded[i][j]
            if center_cls == -1:
                continue
            count = 0
            for di, dj in [(0, 0), (-1, 0), (1, 0), (0, -1), (0, 1)]:
                if decoded[i + di][j + dj] == center_cls:
                    count += 1
            if count >= 4:
                candidates.append([j, i, center_cls])  # x=j, y=i
                if len(candidates) >= 50:
                    break
        if len(candidates) >= 50:
            break

    if not candidates:
        return [], (draw_clusters_on_image(Img, []) if Draw else None)

    # --- Вспомогательная рекурсивная функция TestNB ---
    def test_nb(idx, comp_cls):
        """
        Рекурсивно обходит связанные компоненты.
        Обновляет глобальные min/max.
        """
        nonlocal min_x, min_y, max_x, max_y
        x, y, cls = candidates[idx]
        if cls != comp_cls or cls == -1:
            return
        # Обновляем границы
        if x < min_x: min_x = x
        if y < min_y: min_y = y
        if x > max_x: max_x = x
        if y > max_y: max_y = y
        # Помечаем как обработанное
        candidates[idx][2] = -1
        # Рекурсивно проверяем всех соседей
        for j in range(idx + 1, len(candidates)):
            if candidates[j][2] == -1:
                continue
            xj, yj, clsj = candidates[j]
            if clsj == comp_cls and abs(x - xj) <= 1 and abs(y - yj) <= 1:
                test_nb(j, comp_cls)

    # --- Шаг 3: Обработка кластеров ---
    result = []

    for i in range(len(candidates)):
        if candidates[i][2] == -1:
            continue

        comp_cls = candidates[i][2]
        # Инициализируем границы текущей точки
        min_x = max_x = candidates[i][0]
        min_y = max_y = candidates[i][1]

        # Обходим компоненту
        test_nb(i, comp_cls)

        # Центр ограничивающего прямоугольника
        cx = (min_x + max_x + 1) // 2  # эквивалент round((min+max)/2) для целых
        cy = (min_y + max_y + 1) // 2

        result.append([cx, cy, comp_cls])

    if Draw:
        return result, draw_clusters_on_image(Img, result)
    else:
        return result, None


import numpy as np


def compute_simple_error(Y_true, clusters_pred, K0=20, K1=19):
    """
    Упрощённый подсчёт ошибки: 1, если:
    - в clusters_pred более одной точки,
    - или класс неверен (ровно одна точка, но класс не тот),
    - или класс не определён (ровно одна точка, но она не соответствует истине).
    Иначе 0.
    """
    if len(clusters_pred) > 1:
        return 1, 0, 0  # более одной точки — сразу ошибка

    if len(clusters_pred) == 0:
        return 0, 0, 1  # не предсказали — ошибка

    # ровно одна точка
    px, py, pcls = clusters_pred[0]

    # проверим, есть ли истинный объект вблизи
    matched = False
    H, W = Sx, Sy
    for i in range(H):
        for j in range(W):
            logits = Y_true[i][j]
            max_val = max(logits[:10])
            bg_val = logits[10]
            if bg_val < max_val:  # есть объект
                tcls = int(logits[:10].argmax())
                if tcls != pcls:
                    return 0, 1, 0
                else:
                    return 0, 0, 0

    # если дошли сюда — объект не совпал, но был
    return 1  # не было объекта, а мы предсказали


input_scale, input_zero_point = input_details['quantization']

Kst = 0
K = 1.8

while K <= 1.5:
    Err0, Err1, Err2 = 0, 0, 0
    Err00, Err01, Err02 = 0, 0, 0
    for i in tqdm(range(N_VAL)):
        # Подготовка входа: float32 → uint8

        img_uint8 = (X_val[i] / input_scale + input_zero_point).astype(np.uint8)
        img_uint8 = np.expand_dims(img_uint8, axis=0)

        interpreter.set_tensor(input_details['index'], img_uint8)
        interpreter.invoke()
        output_uint8 = interpreter.get_tensor(output_details['index'])[0]  # (16,16,11)

        # Деквантование выхода

        # output_float = (output_uint8.astype(np.float32) - output_zero_point) * output_scale
        # Y_pred_quant_list.append(output_float)

        # BEST 1.18
        qw_res, img_vis = decode_output_with_clustering(X_val[i], output_uint8, 10 * K, 10, i < 50)

        CrErr0, CrErr1, CrErr2 = compute_simple_error(Y_val[i], qw_res)

        Err0 += CrErr0
        Err1 += CrErr1
        Err2 += CrErr2

        if img_vis is not None:

            save_path = os.path.join(f'{RES_DIR}{CrErr0 + 2*CrErr1 + 3*CrErr2}' , f'qv_val_{repeat_count}_{i}_{Kst}.jpg')
            cv2.imwrite(save_path, img_vis)

        # np.round(Y_pred_float_sf[i][..., :10] / Y_pred_float_sf[i][..., 10:11] * 100).astype(int) > 95
        res, img_vis = decode_output_with_clustering(X_val[i], Y_pred_float[i], 10 * K, 10, False)

        CrErr0, CrErr1, CrErr2 = compute_simple_error(Y_val[i], res)

        Err00 += CrErr0
        Err01 += CrErr1
        Err02 += CrErr2

        # save_path = os.path.join(RES_DIR, f'wosm_val_{repeat_count}_{i}.jpg')
        # cv2.imwrite(save_path, img_vis)

        '''
        img_vis = draw_annotations_on_image(X_val[i], Y_pred_float_sf[i])
        save_path = os.path.join(RES_DIR, f'sm_val_{repeat_count}_{i}.jpg')
        cv2.imwrite(save_path, img_vis)'''

    print()
    Err = (Err0 + Err1 + Err2)
    print(K, 'Ошибка квант', Err / N_VAL, Err0 / Err, Err1 / Err, Err2 / Err)

    print()
    Err = (Err00 + Err01 + Err02)
    print(K, 'Ошибка float', Err / N_VAL, Err00 / Err, Err01 / Err, Err02 / Err)
    print()
    Kst += 1
    K += 0.01

if False:
    Y_pred_quant = np.stack(Y_pred_quant_list, axis=0)

    threshold = 0.1
    while threshold <= 2:
        print(f"threshold {threshold}")
        float_metric_sf = exact_match_ratio(Y_val, Y_pred_float_sf).numpy()
        print(f"Float32 with softmax exact_match_ratio: {float_metric_sf:.4f}")

        float_metric = exact_match_ratio(Y_val, Y_pred_float).numpy()
        print(f"Float32 exact_match_ratio: {float_metric:.4f}")

        quant_metric = exact_match_ratio(Y_val, Y_pred_quant).numpy()
        print(threshold)
        print(f"INT8 TFLite exact_match_ratio: {quant_metric:.4f}")
        print(f"Разница: {float_metric - quant_metric:.4f}")

        elapsed = time.time() - start_time
        print(f"Инференс {total_samples} изображений занял {elapsed:.4f} секунд")

        threshold += 0.05

    # Сохраняем лог
    with open(os.path.join(BASE_DIR, 'quantization_validation.txt'), 'w') as f:
        f.write(f"Float32 exact_match_ratio: {float_metric:.6f}\n")
        f.write(f"INT8 TFLite exact_match_ratio: {quant_metric:.6f}\n")
        f.write(f"Drop: {float_metric - quant_metric:.6f}\n")
        f.write(f"Калибровка: {N_CALIB} изображений\n")
        f.write(f"Валидация: {N_VAL} изображений\n")

print("✅ Валидация завершена. Результаты сохранены в quantization_validation.txt")