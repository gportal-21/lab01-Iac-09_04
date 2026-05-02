const url = "https://aws.amazon.com/";

export const handler = async (event) => {
  try {
    const res = await fetch(url);
    console.info("gerson portal", res.status);
    return res.status;
  } catch (e) {
    console.error(e);
    return 500;
  }
};
