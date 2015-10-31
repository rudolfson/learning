def dslDef = new File('ClientOrder.groovy').text
def dsl = new File('order.dsl').text
def script = """
    ${dslDef}
    ${dsl}
"""
new GroovyShell().evaluate(script)
