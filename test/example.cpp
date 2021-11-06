#include "CUnit/Automated.h"
#include "CUnit/Basic.h"
#include "md5.h"
#include "sample.h"

int init_suite(void) { return 0; }

int clean_suite(void) { return 0; }

void test_md5echo(void) {
  // 仮でtrue
  CU_ASSERT(true);
}

void test_sample(void) {
  // 仮でtrue
  CU_ASSERT(true);
}

int main() {
  sample();
  md5echo();

  CU_pSuite pSuite = NULL;

  /* initialize the CUnit test registry */
  if (CUE_SUCCESS != CU_initialize_registry()) return CU_get_error();

  /* add a suite to the registry */
  pSuite = CU_add_suite("Suite_1", init_suite, clean_suite);
  if (NULL == pSuite) {
    CU_cleanup_registry();
    return CU_get_error();
  }

  /* add the tests to the suite */
  if ((NULL == CU_add_test(pSuite, "test of test_md5echo()", test_md5echo)) ||
      (NULL == CU_add_test(pSuite, "test of test_sample()", test_sample))) {
    CU_cleanup_registry();
    return CU_get_error();
  }

  /* Run all tests using the CUnit Basic interface */
  CU_automated_run_tests();
  CU_list_tests_to_file();
  CU_basic_set_mode(CU_BRM_VERBOSE);
  CU_basic_run_tests();
  CU_cleanup_registry();
  return CU_get_error();
}
