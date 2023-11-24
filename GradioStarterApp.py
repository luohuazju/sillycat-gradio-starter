import gradio as gr
import cv2


def echo(input_text):
    return "Echo words: " + input_text + ""


def to_black(input_image):
    output = cv2.cvtColor(input_image, cv2.COLOR_BGR2GRAY)
    return output


ifaceEcho = gr.Interface(
    fn=echo,
    inputs="text",
    outputs="text",
    title="Multi-Page Demo"
)


ifaceBlackImage = gr.Interface(
    fn=to_black,
    inputs="image",
    outputs="image",
    title="Multi-Page Demo"
)

demo = gr.TabbedInterface([ifaceEcho, ifaceBlackImage], ["EchoText", "Image2Black"])

# Run the interface
demo.launch(server_name="0.0.0.0", server_port=9527)