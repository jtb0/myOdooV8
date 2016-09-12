FROM odoo:8
MAINTAINER Marcel <myodoov8@unicare-services.de>

# install woocommerce, to get the WooCommerce-Connector work
USER root
RUN set -x; \
        apt-get update \
        && apt-get -y install -f --no-install-recommends \
           python-pip \
        && pip install woocommerce

USER odoo
